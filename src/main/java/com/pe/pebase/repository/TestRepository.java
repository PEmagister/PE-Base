package com.pe.pebase.repository;

import com.pe.pebase.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TestRepository extends JpaRepository<Question, Long> {

    @Query("select q from Question q join fetch q.answers")
    List<Question> findAllQuestionsWithAnswers();

    @Query("select q.speciality.id from Question q where q.id = :id")
    Long getSpecialityFromQuestionUsingQuestionId(Long id);

    @Query("select q.question from Question q where q.id = :id")
    String getQuestionContentUsingQuestionId(Long id);

}
