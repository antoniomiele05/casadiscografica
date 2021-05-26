package it.example.cd.services;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.example.cd.dto.DiscoDTO;
import it.example.cd.models.Disco;
import it.example.cd.repositories.DiscoRepository;

@Service
public class DiscoServiceImpl implements DiscoService {

	@Autowired
	DiscoRepository discoRepository;

	@Override
	public List<DiscoDTO> getselectVisualizzaDischiStessoTitoloBrano() {
		List<Disco> dischi = discoRepository.findVisualizzaDischiStessoTitoloBrano();
		List<DiscoDTO> dischiDTO = new LinkedList<DiscoDTO>();
	for (Disco d : dischi) {
		DiscoDTO discoDTO = new DiscoDTO(d.getTitoloDisco());
		dischiDTO.add(discoDTO);
		}
	return dischiDTO;
		
	
	}

}
