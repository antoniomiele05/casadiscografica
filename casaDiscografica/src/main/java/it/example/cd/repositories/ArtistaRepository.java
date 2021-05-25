package it.example.cd.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.example.cd.models.Artista;

@Repository
public interface ArtistaRepository extends JpaRepository<Artista, Integer> {

}

