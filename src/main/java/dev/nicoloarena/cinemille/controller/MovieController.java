package dev.nicoloarena.cinemille.controller;

import dev.nicoloarena.cinemille.dto.MovieDTO;
import dev.nicoloarena.cinemille.service.MovieService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@RestController
@RequestMapping("/movies")
@CrossOrigin(origins = "*") // todo add cors configuration
public class MovieController {

    private final MovieService movieService;

    public MovieController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping
    public ResponseEntity<List<MovieDTO>> getMovies(@RequestParam(required = false) String start, @RequestParam(required = false) String end) {
        DateTimeFormatter dateTimeFormat = DateTimeFormatter.ISO_DATE;

        LocalDate startDate = start == null || start.isBlank() ? null : dateTimeFormat.parse(start, LocalDate::from);
        LocalDate endDate = end == null || end.isBlank() ? null : dateTimeFormat.parse(end, LocalDate::from);

        List<MovieDTO> movies = this.movieService.getMoviesInRange(startDate, endDate);
        return ResponseEntity.ok(movies);
    }

}
