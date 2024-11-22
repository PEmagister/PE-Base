package com.pe.pebase.dto.openai;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
public class Message {

    private String role;
    private String msgContent;

}
