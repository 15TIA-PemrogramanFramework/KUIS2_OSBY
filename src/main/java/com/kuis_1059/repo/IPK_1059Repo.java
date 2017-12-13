/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kuis_1059.repo;

import com.kuis_1059.entity.IPK_1059;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Hendro Steven
 */
public interface IPK_1059Repo extends CrudRepository<IPK_1059, Long> {

    @Query("select c from IPK_1059 c")
    public List<IPK_1059> findAllIPK_1059();

    public IPK_1059 save(IPK_1059 category);
}
