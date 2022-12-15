
package com.example.PorfolioBe.Service;

import com.example.PorfolioBe.Repository.ProyectoRepository;
import com.example.PorfolioBe.model.Proyecto;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProyectoService {
    @Autowired
    public ProyectoRepository proyRepo;  
    
    public List<Proyecto> verProyectos() {
        return proyRepo.findAll();
    }
    public void crearProyecto(Proyecto proy) {
        proyRepo.save(proy);
    }

    public void eliminarProyecto(Integer id) {
        proyRepo.deleteById(id);
    }
 
    public Proyecto buscarProyecto(Integer id) {
        return proyRepo.findById(id).orElse(null);           
    }   
    
}
