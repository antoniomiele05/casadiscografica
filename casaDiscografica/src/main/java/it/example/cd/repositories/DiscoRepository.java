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
	
	@Query(value="Select distinct d.*\r\n"
			+ "from esecuzione e, disco d, contiene c\r\n"
			+ "where e.anno_di_registrazione is null AND d.id=c.id_disco AND e.id=c.id_esecuzione", nativeQuery=true)
	List<Disco> findDischi();
	
	/* //VERSIONE HQL
	@Query(value="Select distinct d "
			+ "from Esecuzione e LEFT JOIN e.dischi d "
			+ "where e.annoDiRegistrazione = null")
	List<Disco> findDischi();
	*/

}
