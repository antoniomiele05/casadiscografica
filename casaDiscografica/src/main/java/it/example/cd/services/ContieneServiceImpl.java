package it.example.cd.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.example.cd.dto.ContieneDTO;
import it.example.cd.models.Persona;
import it.example.cd.repositories.DiscoRepository;

@Service
public class ContieneServiceImpl implements ContieneService {

	@Autowired
	DiscoRepository discoRepository;
	
	@Override
	public List<ContieneDTO> getNumeroSerieAlbumConNumeroBrani() {
		// TODO Auto-generated method stub
		
		List<ContieneDTO> contieneDTO = discoRepository.findAutoriECantantiPuri();
		
		return contieneDTO;
	}

}
