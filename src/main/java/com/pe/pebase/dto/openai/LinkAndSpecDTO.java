package com.pe.pebase.dto.openai;

import lombok.*;

import java.util.List;

@Builder
@AllArgsConstructor
@RequiredArgsConstructor
public class LinkAndSpecDTO {
    private String speciality;
    private List<AnswerLinksDTO> answerLinksList;
}
