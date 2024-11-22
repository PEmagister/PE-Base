package com.pe.pebase.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "question")
@Getter
@Setter
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;            // ід питання
    private String question;    // Питання в текстовому форматі

    @ManyToOne
    @JoinColumn(name = "speciality_id")
    private Speciality speciality;

    @JsonBackReference
    @OneToMany(mappedBy = "question")
    private List<Answer> answers;
}
