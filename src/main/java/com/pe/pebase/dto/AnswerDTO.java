package com.pe.pebase.dto;

import lombok.*;

import java.util.Map;

@Builder
@Setter
@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class AnswerDTO {
    private Integer technical;
    private Integer humanitarian;
    private Integer artistic;
}
