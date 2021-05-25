package it.example.cd.models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

import lombok.Data;

@Data
@Entity
@Table(name="disco")
public class Disco {


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;

	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name = "contiene",
	joinColumns = {@JoinColumn(name= "id_disco")},
	inverseJoinColumns = {@JoinColumn(name ="id_esecuzione")}
			)
	
	private Set<Esecuzione> esecuzioni;


	@Column
	private String titoloDisco;

	@Column 
	private Integer annoUscitaAlbum;

	@Column 
	private Double prezzo;
	
	@Column 
	private String numeroSerie;
}
