package com.pe.pebase.dto.openai;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@AllArgsConstructor
@Getter
@Setter
public class OpenAiResponse {

    private List<Choice> choices;

    @AllArgsConstructor
    @Getter
    @Setter
    public static class Choice {
        private int index;
        private Message message;
    }

}
