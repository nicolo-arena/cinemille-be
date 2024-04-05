package dev.nicoloarena.cinemille.service;

import dev.nicoloarena.cinemille.dto.MovieDTO;
import dev.nicoloarena.cinemille.model.Movie;
import dev.nicoloarena.cinemille.repository.MovieRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieService {

    private final MovieRepository movieRepository;

    public MovieService(MovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }

    public List<MovieDTO> getAllMovies() {
        List<Movie> movies = this.movieRepository.findAll();
        return movies.stream().map(MovieDTO::new).toList();
    }
}
