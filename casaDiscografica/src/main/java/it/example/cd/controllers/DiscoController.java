package it.example.cd.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.example.cd.dto.DiscoDTO;
import it.example.cd.services.DiscoService;

@RestController
@RequestMapping("/dischi")
public class DiscoController {
	
	@Autowired
	DiscoService discoService;
	
	@GetMapping("/selectVisualizzaDischiStessoTitoloBrano")
	public List<DiscoDTO> selectVisualizzaDischiStessoTitoloBrano(){
		return discoService.getselectVisualizzaDischiStessoTitoloBrano();
	}
}


	//Query: come utente del sistema voglio poter visualizzare 
	//i dischi che hanno lo stesso titolo di un brano all'interno.

	
