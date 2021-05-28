package it.example.cd.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import it.example.cd.models.Persona;

@Repository
public interface PersonaRepository extends JpaRepository<Persona, Integer> {
	
	@Query(value = "SELECT p.* FROM persona p, artista a "
			+ "WHERE a.id_persona = p.id AND (a.autore = true AND a.cantante = false OR a.autore = false AND a.cantante = true)", nativeQuery = true)
	List<Persona> findAutoriECantantiPuri();
	
	@Query(value= "SELECT p.* "
			+ "FROM artista a, persona p "
			+ "WHERE p.id = a.id_persona "
			+ "AND a.cantante = false", nativeQuery = true)
	List<Persona> findautoriNonHannoMaiCantato();

	@Query(value = "SELECT p.* FROM persona p, artista a "
			+ "WHERE a.id_persona = p.id AND p.nome LIKE 'D%' AND a.autore=true AND a.cantante=true", nativeQuery = true)
	List<Persona> findCantautoriNomePerD();
	
	@Query(value = "SELECT p.* "
			+ "FROM esecuzione e, persona p "
			+ "Where titolo  = ?1 "
			+ "AND e.id_artista != ?2 "
			+ "AND p.id = e.id_artista ",nativeQuery = true)
	List<Persona> findCoautoriByTitolo(String titolo, Integer idArtista);
}
