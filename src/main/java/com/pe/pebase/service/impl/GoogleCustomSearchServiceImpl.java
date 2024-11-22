//package com.pe.pebase.service.impl;
//
//import com.pe.pebase.entity.Answer;
//import com.pe.pebase.entity.User;
//import com.pe.pebase.entity.UserAnswers;
//import com.pe.pebase.repository.UserAnswerRepository;
//import com.pe.pebase.repository.UserRepository;
//import com.pe.pebase.service.GoogleCustomSearchService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Service;
//
//import javax.net.ssl.HttpsURLConnection;
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.net.URL;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Optional;
//import java.util.Random;
//
//@Service
//@RequiredArgsConstructor
//public class GoogleCustomSearchServiceImpl implements GoogleCustomSearchService {
//
//    @Value("${spring.google.search.key}")
//    private String googleKey;
//
//    private final UserRepository userRepository;
//    private final UserAnswerRepository userAnswerRepository;
//
//    public List<String> googleSearchLink(String email) throws IOException {
//        String query;
//
//        Optional<User> user = userRepository.findByEmail(email);
//
//        if (user.isPresent()) {
//            List<Answer> allUserAnswersList =
//                    userAnswerRepository.findAllByUser(user.get()).stream().map(UserAnswers::getAnswer).toList();
//
//            List<Answer> failedUserAnswersList =
//                    allUserAnswersList.stream().filter(answer -> !answer.isCorrect()).toList();
//
//            int count = failedUserAnswersList.size();
//            int min = 1;
//            int randomQuestion = min + (int)(Math.random() * (count - min));
//            query = failedUserAnswersList.get(randomQuestion).getQuestion().getQuestion();
//            query = query.replace(" ", "%20");
//
//            URL url = new URL("https://www.googleapis.com/customsearch/v1?key=" + googleKey + "&cx=47752f0cc0a0a4509&q=" + query + "&alt=json");
//            return sendGoogleRequest(url);
//        }
//        return List.of();
//    }
//
//    private List<String> sendGoogleRequest(URL url) throws IOException {
//        List<String> links = new ArrayList<>();
//
//        HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
//        connection.setRequestMethod("GET");
//        connection.setRequestProperty("Accept", "application/json");
//        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
//
//        String result;
//        System.out.println("Output: ");
//        while ((result = bufferedReader.readLine()) != null) {
//            if (result.contains("\"link\": \"")){
//                String link = result.substring(result.indexOf("\"link\": \"")+("\"link\": \"").length(), result.indexOf("\","));
//                links.add(link);
//                System.out.println(link);
//            }
//        }
//
//        connection.disconnect();
//        return links;
//    }
//
//}
