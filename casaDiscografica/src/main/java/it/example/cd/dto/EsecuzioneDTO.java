package it.example.cd.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EsecuzioneDTO {
	private String titoloBrano;
	private int annoDiRegistrazione;

}
