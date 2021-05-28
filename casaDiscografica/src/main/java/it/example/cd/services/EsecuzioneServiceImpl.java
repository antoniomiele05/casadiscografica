package it.example.cd.services;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.example.cd.dto.EsecuzioneDTO;
import it.example.cd.models.Esecuzione;
import it.example.cd.repositories.EsecuzioneRepository;

@Service
public class EsecuzioneServiceImpl implements EsecuzioneService {
	@Autowired 
	EsecuzioneRepository esecuzioneRepository;

	@Override
	public List<EsecuzioneDTO> findDiscSerialNumbS01OrderedByEsecution(){
		List<Esecuzione> esecuzioni = esecuzioneRepository.findDiscSerialNumbS01OrderedByEsecution();
		List<EsecuzioneDTO> esecuzioniDTO = new LinkedList<EsecuzioneDTO>();
	for (Esecuzione e : esecuzioni) {
		EsecuzioneDTO esecuzioneDTO = new EsecuzioneDTO(e.getTitolo(), e.getAnnoDiRegistrazione());
		esecuzioniDTO.add(esecuzioneDTO);
		}
	return esecuzioniDTO;
	
	}
	@Override
	public List<EsecuzioneDTO> findVisualizzaBraniDaNumeroSerie() {
		List<Esecuzione> esecuzioni = esecuzioneRepository.findVisualizzaBraniDaNumeroSerie();
		List<EsecuzioneDTO> esecuzioniDTO = new LinkedList<EsecuzioneDTO>();
	for (Esecuzione e : esecuzioni) {
		EsecuzioneDTO esecuzioneDTO = new EsecuzioneDTO(e.getTitolo(), e.getAnnoDiRegistrazione());
		esecuzioniDTO.add(esecuzioneDTO);
		}
	return esecuzioniDTO;
	}
}
