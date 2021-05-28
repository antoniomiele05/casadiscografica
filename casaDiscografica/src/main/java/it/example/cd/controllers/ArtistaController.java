package it.example.cd.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.example.cd.dto.PersonaDTO;
import it.example.cd.services.ArtistaService;

@RestController
@RequestMapping("/artista")
public class ArtistaController {
	
	@Autowired
	private ArtistaService artistaService;
	
	//US 7
	@GetMapping("/getAutoriCantantiPuri")
	public List<PersonaDTO> autorieCantantiPuri(){		
		return artistaService.getAutorieCantantiPuri();
	}
	
	//US 6
	@GetMapping("/autoriNonHannoMaiCantato")
	public List<PersonaDTO> autoriNonHannoMaiCantato(){
		return artistaService.getautoriNonHannoMaiCantato();
	}
	
	//US 3
	@GetMapping("/cantautoriNomePerD")
	public List<PersonaDTO> cantautoriNomePerD(){
		return artistaService.getCantautoriNomePerD();
	}

}
