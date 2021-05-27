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
	
	public List<DiscoDTO> findDischi(){
		List<Disco> dischiConBraniSenzaAnno =discoRepository.findDischi();
		List<DiscoDTO> risultato =new LinkedList<DiscoDTO>();
		for (Disco i : dischiConBraniSenzaAnno) {
			DiscoDTO discoDTO = new DiscoDTO(i.getTitoloDisco());
			risultato.add(discoDTO);
		}
			
		return risultato;
	}
//	ArtistaDTO artistaDTO = new ArtistaDTO(p.getNome(),p.getCognome());
//	risultato.add(artistaDTO);
		
	
	

}
