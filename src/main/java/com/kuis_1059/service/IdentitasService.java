/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kuis_1059.service;

import com.kuis_1059.entity.Identitas;
import com.kuis_1059.repo.IdentitasRepo;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Hendro Steven
 */
@Service("IdentitasService")
@Transactional
public class IdentitasService {

  @Autowired
    private IdentitasRepo repo;

    public Identitas insert(Identitas category) {
        return repo.save(category);
    }
    
    public Identitas update(Identitas category) {
        return repo.save(category);
    }
    
    public boolean delete(Long id){
        repo.delete(id);
        return true;
    }
    
    public Identitas getById(Long id){
        return repo.findOne(id);
    }
    
    public List<Identitas> getAll(){
        return repo.findAllIdentitas();
    }
}
