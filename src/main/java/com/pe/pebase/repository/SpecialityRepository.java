package com.pe.pebase.repository;

import com.pe.pebase.entity.Speciality;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface SpecialityRepository extends JpaRepository<Speciality, Long> {

    @Query("select s.speciality from Speciality as s where s.id = :id")
    String getSpecialityUsingId(Long id);

}
