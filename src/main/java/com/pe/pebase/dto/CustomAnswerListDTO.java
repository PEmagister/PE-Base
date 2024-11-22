package com.pe.pebase.dto;

import lombok.*;

@Builder
@Setter
@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class CustomAnswerListDTO {

    private Long answerId;
    private String answer;

}
