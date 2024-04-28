package com.quotationbuilding1.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quotationbuilding1.model.User;

@Repository
public interface MyRepository extends JpaRepository<User, Integer>{

}
