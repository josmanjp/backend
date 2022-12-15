
package com.example.PorfolioBe.Repository;

import com.example.PorfolioBe.model.Persona;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonaRepository extends JpaRepository <Persona, Integer> {
    public List<Persona> findByCorreoAndContrasena(String correo, String contrasena);
}
