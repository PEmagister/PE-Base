//package com.pe.pebase.controller;
//
//import com.pe.pebase.dto.openai.LinkAndSpecDTO;
//import com.pe.pebase.service.GoogleCustomSearchService;
//import com.pe.pebase.service.OpenAiService;
//import lombok.AllArgsConstructor;
//import org.springframework.http.ResponseEntity;
//import org.springframework.security.core.Authentication;
//import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.io.IOException;
//import java.util.List;
//
//@RestController
//@RequestMapping("/guidance")
//@AllArgsConstructor
//@CrossOrigin(origins = "http://localhost:3000", maxAge = 3600)
//public class GoogleSearchController {
//
//    private final GoogleCustomSearchService googleService;
//
//    @GetMapping
//    public ResponseEntity<List<String>> findUsefulLinks(Authentication authentication) throws IOException {
//        return ResponseEntity.ok(googleService.googleSearchLink(authentication.getName()));
//    }
//
//}
