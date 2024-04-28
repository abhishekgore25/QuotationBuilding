package com.quotationbuilding1.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quotationbuilding1.model.Quote;

public interface QuoteRepository extends JpaRepository<Quote, Integer>{

}
