package com.dxc;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.dxc.pojos.Admin;



@Repository
public interface MongoAdmin extends MongoRepository<Admin, String>{

}
