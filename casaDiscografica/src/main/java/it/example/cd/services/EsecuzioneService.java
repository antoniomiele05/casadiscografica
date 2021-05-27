package it.example.cd.services;

import java.util.List;

import it.example.cd.dto.EsecuzioneDTO;

public interface EsecuzioneService {
	List<EsecuzioneDTO> findDiscSerialNumbS01OrderedByEsecution();
	List<EsecuzioneDTO> findVisualizzaBraniDaNumeroSerie();
}
