package com.pe.pebase.controller;

import com.pe.pebase.dto.openai.LinkAndSpecDTO;
import com.pe.pebase.service.OpenAiService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/guidance")
@AllArgsConstructor
public class OpenAiController {

    private final OpenAiService openAiService;

    @GetMapping
    public ResponseEntity<LinkAndSpecDTO> findUsefulLinks(Authentication authentication) {
        return ResponseEntity.ok(openAiService.findLinks(authentication.getName()));
    }

}
