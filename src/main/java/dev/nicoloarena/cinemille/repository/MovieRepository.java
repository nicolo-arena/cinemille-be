package dev.nicoloarena.cinemille.repository;

import dev.nicoloarena.cinemille.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {

}
