package com.example.PorfolioBe.model;


import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Entity
@Table (name= "persona")
public class Persona {    
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Integer id;
    private String nombre;
    private String apellido;
    private String domicilio;
    private String telefono;
    private String correo;
    private String sobre_mi;
    private String url_foto;
    private String contrasena;
    private String titulo;
    private String estado;
    private String precios;
    private String soporte;
    
    @OneToMany(mappedBy="personaId")
    private List<Estudio> estudios;    
           
    @OneToMany(mappedBy="personaId")
    private List<Experiencia> experiencias; 

    @OneToMany(mappedBy="personaId")
    private List<Proyecto> proyectos; 
    
    @OneToMany(mappedBy="personaId")
    private List<Servicio> servicios;    
    
    public Persona() {

    }

    public Persona(Integer id, String nombre, String apellido, String domicilio, String telefono, String correo, String sobre_mi, String url_foto, String contrasena, String titulo, String estado, String precios, String soporte, List<Estudio> estudios, List<Experiencia> experiencias, List<Proyecto> proyectos, List<Servicio> servicios) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.domicilio = domicilio;
        this.telefono = telefono;
        this.correo = correo;
        this.sobre_mi = sobre_mi;
        this.url_foto = url_foto;
        this.contrasena = contrasena;
        this.titulo = titulo;
        this.estado = estado;
        this.precios = precios;
        this.soporte = soporte;
        
        estudios= new ArrayList();
        experiencias= new ArrayList();
        proyectos= new ArrayList();
        servicios= new ArrayList();

    }


   
    
}
