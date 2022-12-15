
package com.example.PorfolioBe.model;

import java.io.Serializable;
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
public class Experiencia implements Serializable {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Integer id;        
    private String titulo;
    private Integer porcentaje;
    @Column (name= "persona_id")
    private Integer personaId;
        
    /*@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="persona_id", nullable=false)
    private Persona pers;     */

    public Experiencia() {
    }

    public Experiencia(Integer id, String titulo, Integer porcentaje,  Integer personaId) {
        this.id = id;
        this.titulo = titulo;
        this.porcentaje = porcentaje;
        this.personaId =  personaId;
    }
    
    
    
}
