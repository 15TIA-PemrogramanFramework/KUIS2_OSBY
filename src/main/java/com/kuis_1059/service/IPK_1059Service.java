/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kuis_1059.service;

import com.kuis_1059.entity.IPK_1059;
import com.kuis_1059.repo.IPK_1059Repo;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Hendro Steven
 */
@Service("IPK_1059Service")
@Transactional
public class IPK_1059Service {

  @Autowired
    private IPK_1059Repo repo;

    public IPK_1059 insert(IPK_1059 category) {
        return repo.save(category);
    }
    
    public IPK_1059 update(IPK_1059 category) {
        return repo.save(category);
    }
    
    public boolean delete(Long id){
        repo.delete(id);
        return true;
    }
    
    public IPK_1059 getById(Long id){
        return repo.findOne(id);
    }
    
    public List<IPK_1059> getAll(){
        return repo.findAllIPK_1059();
    }
}
