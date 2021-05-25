package it.example.cd.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.example.cd.models.Esecuzione;
@Repository
public interface EsecuzioneRepository extends JpaRepository<Esecuzione, Integer>{

}
