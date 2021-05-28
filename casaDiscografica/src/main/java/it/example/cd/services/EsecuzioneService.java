package it.example.cd.services;

import java.util.List;

import it.example.cd.dto.EsecuzioneDTO;
import it.example.cd.dto.PersonaDTO;

public interface EsecuzioneService {
	List<EsecuzioneDTO> findDiscSerialNumbS01OrderedByEsecution();
	List<EsecuzioneDTO> findVisualizzaBraniDaNumeroSerie();
	List<PersonaDTO> getCercaCoautori(String titolo, Integer idArtista);
}
