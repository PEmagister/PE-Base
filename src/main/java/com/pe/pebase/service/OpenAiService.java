package com.pe.pebase.service;

import com.pe.pebase.dto.openai.LinkAndSpecDTO;

public interface OpenAiService {

    LinkAndSpecDTO findLinks(String email);

}
