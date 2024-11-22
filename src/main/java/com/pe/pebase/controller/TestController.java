package com.pe.pebase.controller;

import com.pe.pebase.dto.RequestTestDTO;
import com.pe.pebase.dto.ResponseTestDTO;
import com.pe.pebase.entity.ResultAnswer;
import com.pe.pebase.service.TestService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/test")
@AllArgsConstructor
@CrossOrigin(origins = "http://localhost:3000", maxAge = 3600)
public class TestController {

    private final TestService testService;

    @GetMapping("/get")
    public ResponseEntity<List<RequestTestDTO>> getTest() {
        return ResponseEntity.ok(testService.getTestList());
    }

    @PostMapping("/save")
    public ResponseEntity<ResultAnswer> saveTestResult(@RequestBody List<ResponseTestDTO> testDTO, Authentication authentication) {
        ResultAnswer answer = testService.saveTest(testDTO, authentication.getName());

        return ResponseEntity.ok(answer);
    }
}
