package dev.nicoloarena.cinemille.controller;

import dev.nicoloarena.cinemille.dto.MovieDTO;
import dev.nicoloarena.cinemille.service.MovieService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/movies")
public class MovieController {

    private final MovieService movieService;

    public MovieController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping
    public ResponseEntity<List<MovieDTO>> getMovies() {
        List<MovieDTO> movies = this.movieService.getAllMovies();
        return ResponseEntity.ok(movies);
    }

}
