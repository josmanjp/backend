
package com.example.PorfolioBe.Repository;

import com.example.PorfolioBe.model.Proyecto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProyectoRepository extends JpaRepository <Proyecto, Integer>  {
    
}
