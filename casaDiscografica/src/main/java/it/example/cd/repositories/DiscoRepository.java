package it.example.cd.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.example.cd.models.Disco;

@Repository
public interface DiscoRepository extends JpaRepository<Disco, Integer> {

}
