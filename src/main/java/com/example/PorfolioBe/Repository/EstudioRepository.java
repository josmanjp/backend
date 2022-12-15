
package com.example.PorfolioBe.Repository;

import com.example.PorfolioBe.model.Estudio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EstudioRepository extends JpaRepository <Estudio, Integer>  {
    
}
