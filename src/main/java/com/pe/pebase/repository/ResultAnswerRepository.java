package com.pe.pebase.repository;

import com.pe.pebase.entity.ResultAnswer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ResultAnswerRepository extends JpaRepository<ResultAnswer, Long> {

}
