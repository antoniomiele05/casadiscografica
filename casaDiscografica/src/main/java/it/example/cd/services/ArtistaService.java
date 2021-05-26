package it.example.cd.services;

import java.util.List;

import it.example.cd.dto.PersonaDTO;
import it.example.cd.models.Artista;

public interface ArtistaService {
	
	List<PersonaDTO> getAutorieCantantiPuri();
	List<PersonaDTO> getautoriNonHannoMaiCantato();

}
