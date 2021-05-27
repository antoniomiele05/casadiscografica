package it.example.cd.services;

import java.util.LinkedList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.example.cd.dto.PersonaDTO;
import it.example.cd.models.Persona;
import it.example.cd.repositories.PersonaRepository;

@Service
public class ArtistaServiceImpl implements ArtistaService {
	
	@Autowired
	PersonaRepository personaRepository;
	

	@Override
	public List<PersonaDTO> getAutorieCantantiPuri() {
		// TODO Auto-generated method stub
		
		List<Persona> persone = personaRepository.findAutoriECantantiPuri();
		List<PersonaDTO> autoriOrCantanti = new LinkedList<PersonaDTO>();
		for(Persona p : persone) {
			PersonaDTO personaDTO = new PersonaDTO(p.getNome(), p.getCognome());
			autoriOrCantanti.add(personaDTO);
		}
		return autoriOrCantanti;
	}
	
	
	@Override
	public List<PersonaDTO> getautoriNonHannoMaiCantato() {
		List <Persona> persona = personaRepository.findautoriNonHannoMaiCantato();
		List <PersonaDTO> risultato = new LinkedList<PersonaDTO>();
		for (Persona p : persona) {
			PersonaDTO personaDTO = new PersonaDTO(p.getNome(),p.getCognome());
			risultato.add(personaDTO);
		}
		return risultato;
	}


	@Override
	public List<PersonaDTO> getCantautoriNomePerD() {
		// TODO Auto-generated method stub
		
		List <Persona> persona = personaRepository.findCantautoriNomePerD();
		List <PersonaDTO> risultato = new LinkedList<PersonaDTO>();
		for (Persona p : persona) {
			PersonaDTO personaDTO = new PersonaDTO(p.getNome(),p.getCognome());
			risultato.add(personaDTO);
		}
		return risultato;
	}

}
