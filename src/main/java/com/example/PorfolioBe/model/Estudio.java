
package com.example.PorfolioBe.model;

import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Entity
@Table
public class Estudio  {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Integer id;        
    
    private String titulo;
    private String descripcion;
    private String url_imagen;
    
    @Column (name= "persona_id")
    private Integer personaId;
    
    public Estudio() {
    }

    public Estudio(Integer id, String titulo, String descripcion, String url_imagen, Integer personaId) {
        this.id = id;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.url_imagen = url_imagen;
        this.personaId = personaId;
    }       
}
