package com.pe.pebase.service;

import com.pe.pebase.dto.AnswerDTO;
import com.pe.pebase.dto.RequestTestDTO;
import com.pe.pebase.dto.ResponseTestDTO;
import com.pe.pebase.entity.ResultAnswer;

import java.util.List;

public interface TestService {

    List<RequestTestDTO> getTestList();
    ResultAnswer saveTest(List<ResponseTestDTO> testDTO, String userEmail);

}
