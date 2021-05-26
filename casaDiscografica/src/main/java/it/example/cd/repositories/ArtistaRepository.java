package it.example.cd.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import it.example.cd.models.Artista;
import it.example.cd.models.Persona;

@Repository
public interface ArtistaRepository extends JpaRepository<Artista, Integer> {
	/*
	@Query(value = "SELECT DISTINCT p.nome, p.cognome, a.nomed_arte	FROM persona p, artista a"
			+ "WHERE a.id_persona = p.id AND (a.autore is true AND a.cantante is false OR a.autore is false AND a.cantante is true)", nativeQuery = true)
	List<ArtistaPersonaDTO> findAutoriECantantiPuri();*/
	/*@Query(value = "SELECT p.nome, p.cognome, a.nomed_arte FROM persona p, artista a "
			+ "WHERE a.id_persona = p.id AND (a.autore = true AND a.cantante = false OR a.autore = false AND a.cantante = true)", nativeQuery = true)
	List<ArtistaPersonaDTO> findAutoriECantantiPuri();*/
	
	
}
