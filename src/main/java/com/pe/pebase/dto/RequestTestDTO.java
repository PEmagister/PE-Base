package com.pe.pebase.dto;

import com.pe.pebase.entity.Question;
import lombok.*;

import java.util.List;

@Builder
@Setter
@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class RequestTestDTO {

    private Question question;
    private List<CustomAnswerListDTO> answers;

}
