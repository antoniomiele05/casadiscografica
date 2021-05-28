package it.example.cd.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import it.example.cd.dto.EsecuzioneDTO;
import it.example.cd.dto.PersonaDTO;
import it.example.cd.services.EsecuzioneService;

@RestController
@RequestMapping("/esecuzione")
public class EsecuzioneController {
	@Autowired 
	EsecuzioneService esecuzioneService;
	
	// US 8
	@GetMapping("/findDiscSerialNumbS01OrderedByEsecution")
	public List<EsecuzioneDTO> findDiscSerialNumbS01OrderedByEsecution(){
	return esecuzioneService.findDiscSerialNumbS01OrderedByEsecution();
	}
	
	// US 9
	@GetMapping("/findVisualizzaBraniDaNumeroSerie")
	public List<EsecuzioneDTO> findVisualizzaBraniDaNumeroSerie(){
		return esecuzioneService.findVisualizzaBraniDaNumeroSerie();
	}
	
	//US 10
	@GetMapping("/cercaCoautori/{titolo}/{idArtista}")
	public List<PersonaDTO> cercaCoautori(@PathVariable String titolo, @PathVariable Integer idArtista){
		return esecuzioneService.getCercaCoautori(titolo,idArtista);
	}

}
