/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kuis_1059.controller;

import com.kuis_1059.entity.IPK_1059;
import com.kuis_1059.service.IPK_1059Service;
import com.kuis_1059.service.IPK_1059Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hendro Steven
 */
@RestController
@RequestMapping("/IPK_1059")
public class IPK_1059Controller {

    @Autowired
    private IPK_1059Service ipk_1059Service;

    @RequestMapping(method = RequestMethod.POST)
    public IPK_1059 insert(@RequestBody IPK_1059 ipk_1059) {
        return ipk_1059Service.insert(ipk_1059);
    }

    @RequestMapping(method = RequestMethod.PUT)
    public IPK_1059 update(@RequestBody IPK_1059 ipk_1059) {
        return ipk_1059Service.update(ipk_1059);
    }

    @RequestMapping(method = RequestMethod.DELETE, value = "/{id}")
    public boolean delete(@PathVariable("id") Long id) {
        return ipk_1059Service.delete(id);
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/{id}")
    public IPK_1059 getById(@PathVariable("id") Long id){
        return ipk_1059Service.getById(id);
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public List<IPK_1059> getAll(){
        return ipk_1059Service.getAll();
    }
}
