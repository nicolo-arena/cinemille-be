package dev.nicoloarena.cinemille.model;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;

@MappedSuperclass
public class CommonEntity {

    @Id
    @GeneratedValue
    private Long id;

}
