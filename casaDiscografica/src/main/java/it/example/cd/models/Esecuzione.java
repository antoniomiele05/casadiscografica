package it.example.cd.models;

import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name="esecuzione")
public class Esecuzione {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;


	@Column 
	private String titolo;

	@Column 
	private Date annoDiRegistrazione;
	
	@ManyToOne
	@JoinColumn(name = "id_artista")
	private Artista artista;	

	@ManyToMany(mappedBy="esecuzioni")
	Set<Disco> dischi;
}
