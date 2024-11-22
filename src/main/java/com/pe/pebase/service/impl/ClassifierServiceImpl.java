package com.pe.pebase.service.impl;

import com.pe.pebase.entity.User;
import com.pe.pebase.repository.UserRepository;
import com.pe.pebase.service.ClassifierService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class ClassifierServiceImpl implements ClassifierService {

    private final UserRepository userRepository;

    @Override
    public void classifyUser(String userEmail) {
        Optional<User> user = userRepository.findByEmail(userEmail);

    }
}
