package com.pe.pebase.service.impl;

import com.pe.pebase.dto.*;
import com.pe.pebase.entity.*;
import com.pe.pebase.repository.*;
import com.pe.pebase.service.TestService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
@AllArgsConstructor
public class TestServiceImpl implements TestService {

    private final TestRepository testRepository;
    private final ResultAnswerRepository resultAnswerRepository;
    private final SpecialityRepository specialityRepository;

    private final UserAnswerRepository userAnswerRepository;
    private final UserRepository userRepository;
    private final AnswerRepository answerRepository;

    @Qualifier("restTemplate")
    private final RestTemplate restTemplate;

    @Override
    public List<RequestTestDTO> getTestList() {
        List<Question> questions = testRepository.findAllQuestionsWithAnswers();

        return questions.stream()
                .map(question -> RequestTestDTO.builder()
                        .question(question)
                        .answers(
                            question.getAnswers().stream()
                                    .map(answer -> CustomAnswerListDTO.builder()
                                        .answerId(answer.getId())
                                        .answer(answer.getAnswer())
                                        .build()
                            ).toList())
                        .build())
                .toList();
    }

    public ResultAnswer saveTest(List<ResponseTestDTO> testDTO, String userEmail) {
        Optional<User> userDB = userRepository.findByEmail(userEmail);
        User userPresent;
        if (userDB.isPresent())
            userPresent = userDB.get();
        else
            return null;


//        TODO: Записувати резульатити тестів user - answer
        String url = "http://localhost:8080/classify";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        saveUserAnswers(testDTO, userPresent);
        AnswerDTO answer = reviewTest(testDTO);
        HttpEntity<AnswerDTO> requestEntity = new HttpEntity<>(answer, headers);

        ResponseEntity<ClassifiedDTO> response = restTemplate.exchange(url, HttpMethod.POST, requestEntity, ClassifiedDTO.class);

        Integer classifiedGroupNumber = Objects.requireNonNull(response.getBody()).getGroup();;
        Long specialityID = switch (classifiedGroupNumber) {
            case 0 -> 1L; // technical
            case 1 -> 2L; // humanitarian
            case 2 -> 3L; // artistic
            default -> 1L;
        };

        Optional<Speciality> speciality = specialityRepository.findById(specialityID);

        return resultAnswerRepository.save(ResultAnswer.builder()
                .artistic(answer.getArtistic())
                .humanitarian(answer.getHumanitarian())
                .technical(answer.getTechnical())
                .user(userPresent)
                .speciality(speciality.get())
                .build());
    }

    private void saveUserAnswers(List<ResponseTestDTO> testDTO, User user) {
        testDTO.forEach(test -> {
            Optional<Answer> answer = answerRepository.findById(test.getAnswerId());
            answer.ifPresent(value -> userAnswerRepository.save(UserAnswers.builder()
                    .user(user)
                    .answer(value)
                    .build()));
        });
    }

    private AnswerDTO reviewTest(List<ResponseTestDTO> testDTO) {
        List<Question> questions = testRepository.findAllQuestionsWithAnswers();

        int technical = 0;
        int humanitarian = 0;
        int artistic = 0;

        for (ResponseTestDTO response : testDTO) {
            // Знайти питання за ID
            Optional<Question> questionOpt = questions.stream()
                    .filter(q -> q.getId().equals(response.getQuestionId()))
                    .findFirst();

            // Якщо питання знайдено
            if (questionOpt.isPresent()) {
                Question question = questionOpt.get();

                // Знайти відповідь за ID зі списку відповідей питання
                Optional<Answer> answerOpt = question.getAnswers().stream()
                        .filter(a -> a.getId().equals(response.getAnswerId()))
                        .findFirst();

                // Якщо відповідь знайдена і вона правильна (correct == true)
                if (answerOpt.isPresent() && answerOpt.get().isCorrect()) {
                    // Перевіряємо спеціальність питання
                    switch (question.getSpeciality().getSpeciality().toLowerCase()) {
                        case "technical":
                            technical += 1;
                            break;
                        case "humanitarian":
                            humanitarian += 1;
                            break;
                        case "artistic":
                            artistic += 1;
                            break;
                        default:
                            // Якщо спеціальність невідома, можна нічого не робити або додати іншу логіку
                            break;
                    }
                }
            }
        }

//        Map<String, Integer> result = new HashMap<>();
//        result.put("technical", technical);
//        result.put("humanitarian", humanitarian);
//        result.put("artistic", artistic);

        return AnswerDTO.builder()
                .technical(technical)
                .humanitarian(humanitarian)
                .artistic(artistic)
                .build();
    }
}
