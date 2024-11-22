package com.pe.pebase.dto.openai;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.RequiredArgsConstructor;

@Builder
@AllArgsConstructor
@RequiredArgsConstructor
public class AnswerLinksDTO {

    private String question;
    private String openAiResponse;

}
