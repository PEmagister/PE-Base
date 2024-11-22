package com.pe.pebase.dto.openai;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class OpenAiRequest {

    private String model;
    private List<Message> messages;

    public OpenAiRequest(String model, String prompt) {
        this.model = model;
        this.messages = new ArrayList<>();
        this.messages.add(new Message("system",prompt));
    }

}
