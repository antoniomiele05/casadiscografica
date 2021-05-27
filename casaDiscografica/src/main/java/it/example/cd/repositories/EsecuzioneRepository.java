package it.example.cd.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import it.example.cd.models.Esecuzione;
@Repository
public interface EsecuzioneRepository extends JpaRepository<Esecuzione, Integer>{
	
	@Query(value = "select e.* "
			+ "from esecuzione e, contiene c, disco d \n"
			+ "where e.id=c.id_esecuzione And d.id=c.id_disco and d.numero_serie= 'S01'\n"
			+ "order by id_esecuzione", nativeQuery=true)
	List<Esecuzione> findDiscSerialNumbS01OrderedByEsecution();

}
