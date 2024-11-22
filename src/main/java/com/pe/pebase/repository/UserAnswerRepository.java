package com.pe.pebase.repository;

import com.pe.pebase.entity.User;
import com.pe.pebase.entity.UserAnswers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserAnswerRepository extends JpaRepository<UserAnswers, Long> {

    List<UserAnswers> findAllByUser(User user);

}
