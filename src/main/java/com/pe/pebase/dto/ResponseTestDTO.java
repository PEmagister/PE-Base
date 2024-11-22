package com.pe.pebase.dto;

import lombok.*;

@Builder
@Setter
@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ResponseTestDTO {
    Long questionId;
    Long answerId;
}
