
package com.example.PorfolioBe.Controller;

import com.example.PorfolioBe.Service.EstudioService;
import com.example.PorfolioBe.Service.ExperienciaService;
import com.example.PorfolioBe.Service.PersonaService;
import com.example.PorfolioBe.Service.ProyectoService;
import com.example.PorfolioBe.Service.ServicioService;
import com.example.PorfolioBe.model.Estudio;
import com.example.PorfolioBe.model.Experiencia;
import com.example.PorfolioBe.model.Persona;
import com.example.PorfolioBe.model.Proyecto;
import com.example.PorfolioBe.model.Servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class Controller {
    @Autowired
    private PersonaService persoServ; 
    
    @Autowired
    private EstudioService estuServ;
    
    @Autowired
    private ProyectoService proyServ;
        

    @Autowired
    private ServicioService servServ;
    
    @Autowired
    private ExperienciaService expeServ; 


    @PostMapping ("/autenticacion/login")
    public Persona loginPersona (@RequestBody Persona pers) {
        return persoServ.loginPersona(pers.getCorreo(),pers.getContrasena());
    }

    
    //----------Persona end points
    @PostMapping ("/new/persona")
    public void agregarPersona (@RequestBody Persona pers) {
             persoServ.crearPersona(pers);
    }
    
    @GetMapping ("/ver/personas")
    @ResponseBody
    public List <Persona> verPersonas(){
     
        return persoServ.verPersonas();
    }
    
    @DeleteMapping ("/delete/perosna/{id}")    
    public void eliminarPersona(@PathVariable Integer id){
        persoServ.eliminarPersona(id);
    }   
    
    @GetMapping ("/buscar/persona/{id}")
    public Persona buscarPersona(@PathVariable Integer id){
        return persoServ.buscarPersona(id);
    }
    
    //----------Estudio end points
    @PostMapping ("/new/estudio")
    public void agregarEstudio (@RequestBody Estudio estu) {
       
        estuServ.crearEstudio(estu);
    }
    
    
    @GetMapping ("/ver/estudios")
    @ResponseBody
    public List <Estudio> verEstudios(){
        return estuServ.verEstudios();
    }
    
    @DeleteMapping ("/delete/estudio/{id}")    
    public void eliminarEstudio(@PathVariable Integer id){
        
        estuServ.eliminarEstudio(id);
    }   
    
    @GetMapping ("/buscar/estudio/{id}")
    public Estudio buscarEstudio(@PathVariable Integer id){
        return estuServ.buscarEstudio(id);
    }
    //-------Proyecto End points
    @PostMapping ("/new/proyecto")
    public void agregarProyecto (@RequestBody Proyecto proy) {
             proyServ.crearProyecto(proy);
    }
    @GetMapping ("/ver/proyectos")
    @ResponseBody
    public List <Proyecto> verProyectos(){
        return proyServ.verProyectos();
    }
    
    @DeleteMapping ("/delete/proyecto/{id}")    
    public void eliminarProyecto(@PathVariable Integer id){
        proyServ.eliminarProyecto(id);
    }   
    
    @GetMapping ("/buscar/proyecto/{id}")
    public Proyecto buscarProyecto(@PathVariable Integer id){
        return proyServ.buscarProyecto(id);
    }    
    
    //-------Servicios End points
    @PostMapping ("/new/servicio")
    public void agregarServicio (@RequestBody Servicio serv) {
        servServ.crearServicio(serv);
    }
    @GetMapping ("/ver/servicios")
    @ResponseBody
    public List <Servicio> verServicios(){
        return servServ.verServicios();
    }
    
    @DeleteMapping ("/delete/servicio/{id}")    
    public void eliminarServicio(@PathVariable Integer id){
        servServ.eliminarServicio(id);
    }   
    
    @GetMapping ("/buscar/servicio/{id}")
    public Servicio buscarServicio(@PathVariable Integer id){
        return servServ.buscarServicio(id);
    }
    
    //-------Experiencia End points
    @PostMapping ("/new/experiencia")
    public void agregarExperiencia (@RequestBody Experiencia expe) {
        expeServ.crearExperiencia(expe);
    }
    @GetMapping ("/ver/experiencias")
    @ResponseBody
    public List <Experiencia> verExperiencias(){
        return expeServ.verExperiencias();
    }
    
    @DeleteMapping ("/delete/experiencia/{id}")    
    public void eliminarExperiencia(@PathVariable Integer id){
        expeServ.eliminarExperiencia(id);
    }   
    
    @GetMapping ("/buscar/experiencia/{id}")
    public Experiencia buscarExperiencia(@PathVariable Integer id){
        return expeServ.buscarExperiencia(id);
    }
}
