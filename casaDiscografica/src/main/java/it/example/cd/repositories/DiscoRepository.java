package it.example.cd.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import it.example.cd.models.Disco;

@Repository
public interface DiscoRepository extends JpaRepository<Disco, Integer> {

	@Query(value= "SELECT distinct d.*" + 
			" FROM disco d, esecuzione e, contiene c" + 
			" WHERE d.id=c.id_disco and c.id_esecuzione=e.id and d.titolo_disco=e.titolo", nativeQuery=true)
	List<Disco> findVisualizzaDischiStessoTitoloBrano();

}
