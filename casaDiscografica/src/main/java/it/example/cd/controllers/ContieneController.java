package it.example.cd.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.example.cd.dto.ContieneDTO;
import it.example.cd.dto.PersonaDTO;
import it.example.cd.services.ArtistaService;
import it.example.cd.services.ContieneService;

@RestController
@RequestMapping("/contiene")
public class ContieneController {
	
	@Autowired
	private ContieneService contieneService;
	
	@GetMapping("/getNumeroSerieAlbumConNumeroBrani")
	public List<ContieneDTO> numeroSerieAlbumConNumeroBrani(){
		
		return contieneService.getNumeroSerieAlbumConNumeroBrani();
	}

}
