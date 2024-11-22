package com.pe.pebase.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Map;

@Entity
@Table(name = "result_answer")
@Getter
@Setter
@Builder
@AllArgsConstructor
@RequiredArgsConstructor
public class ResultAnswer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer technical;
    private Integer humanitarian;
    private Integer artistic;

    @ManyToOne
    @JoinColumn(name = "speciality_id")
    private Speciality speciality;

    @OneToOne
    @JoinColumn(name = "users_id", referencedColumnName = "id")
    private User user;

}
