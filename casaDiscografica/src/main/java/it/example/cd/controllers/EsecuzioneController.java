package it.example.cd.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.example.cd.dto.EsecuzioneDTO;
import it.example.cd.services.EsecuzioneService;

@RestController
@RequestMapping("/esecuzione")
public class EsecuzioneController {
	@Autowired 
	EsecuzioneService esecuzioneService;
	
	@GetMapping("/findDiscSerialNumbS01OrderedByEsecution")
	public List<EsecuzioneDTO> findDiscSerialNumbS01OrderedByEsecution(){
	return esecuzioneService.findDiscSerialNumbS01OrderedByEsecution();
	}
	@GetMapping("/findVisualizzaBraniDaNumeroSerie")
	public List<EsecuzioneDTO> findVisualizzaBraniDaNumeroSerie(){
		return esecuzioneService.findVisualizzaBraniDaNumeroSerie();
	}
	

}
