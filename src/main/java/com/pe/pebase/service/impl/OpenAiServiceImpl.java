package com.pe.pebase.service.impl;

import com.pe.pebase.constant.OpenAiConstant;
import com.pe.pebase.dto.openai.AnswerLinksDTO;
import com.pe.pebase.dto.openai.LinkAndSpecDTO;
import com.pe.pebase.dto.openai.OpenAiRequest;
import com.pe.pebase.dto.openai.OpenAiResponse;
import com.pe.pebase.entity.Answer;
import com.pe.pebase.entity.User;
import com.pe.pebase.entity.UserAnswers;
import com.pe.pebase.repository.*;
import com.pe.pebase.service.OpenAiService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OpenAiServiceImpl implements OpenAiService {
    //    TODO: Можлива помилка через інєкцію!
    @Qualifier("openaiRestTemplate")
    @Autowired
    private RestTemplate restTemplate;

    private final UserRepository userRepository;
    private final AnswerRepository answerRepository;
    private final UserAnswerRepository userAnswerRepository;
    private final TestRepository questionRepository;

        @Value("${spring.openai.model}")
    private String model;
        @Value("${spring.openai.api-url}")
    private String apiURL;
    @Autowired
    private SpecialityRepository specialityRepository;

    @Override
    public LinkAndSpecDTO findLinks(String email) {
        String speciality = null;

        Optional<User> user = userRepository.findByEmail(email);
        List<AnswerLinksDTO> answerLinksList = new ArrayList<>();

        if (user.isPresent()) {
            List<Answer> allUserAnswersList =
                    userAnswerRepository.findAllByUser(user.get()).stream().map(UserAnswers::getAnswer).toList();

            List<Answer> failedUserAnswersList =
                    allUserAnswersList.stream().filter(answer -> !answer.isCorrect()).toList();

            Map<Long, String> result = failedUserAnswersList.stream().map(answer -> {
                OpenAiRequest request = new OpenAiRequest(model, String.format(OpenAiConstant.PROMPT, answer.getAnswer()));
                OpenAiResponse response = restTemplate.postForObject(apiURL, request, OpenAiResponse.class);

                if (response == null || response.getChoices() == null || response.getChoices().isEmpty())
                    return null;

                return new AbstractMap.SimpleEntry<>(
                        answer.getId(),response.getChoices().get(0).getMessage().getMsgContent()
                );
            }).collect(Collectors.toMap(
                    longStringSimpleEntry -> longStringSimpleEntry != null ? longStringSimpleEntry.getKey() : null,
                    longStringSimpleEntry1 -> longStringSimpleEntry1 != null ? longStringSimpleEntry1.getValue() : "")
            );

            for (Map.Entry<Long, String> element : result.entrySet()) {
                answerLinksList.add(AnswerLinksDTO.builder()
                        .question(questionRepository.getQuestionContentUsingQuestionId(answerRepository.getQuestionIdUsingAnswerId(element.getKey())))
                        .openAiResponse(element.getValue())
                        .build()
                );
            }

            Long specialityId = questionRepository.getSpecialityFromQuestionUsingQuestionId(allUserAnswersList.get(0).getQuestion().getId());
            speciality = specialityRepository.getSpecialityUsingId(specialityId);
        }

        return LinkAndSpecDTO.builder()
                .speciality(speciality)
                .answerLinksList(answerLinksList)
                .build();
    }

}
