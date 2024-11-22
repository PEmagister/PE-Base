package com.pe.pebase.repository;

import com.pe.pebase.entity.Answer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnswerRepository extends JpaRepository<Answer, Long> {

    @Query("select a.question.id from Answer a where a.id = :id")
    Long getQuestionIdUsingAnswerId(Long id);

}
