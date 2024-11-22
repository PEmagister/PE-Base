package com.pe.pebase.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Entity
@Table(name = "speciality")
@Getter
//@AllArgsConstructor
@RequiredArgsConstructor
public class Speciality {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String speciality;  // Напрям (Технічний, Гуманітарний, Мистецький)

    @JsonBackReference
    @OneToMany(mappedBy = "speciality")
    private List<Question> questions;

    @JsonBackReference
    @OneToMany(mappedBy = "speciality")
    private List<ResultAnswer> resultAnswers;

}
