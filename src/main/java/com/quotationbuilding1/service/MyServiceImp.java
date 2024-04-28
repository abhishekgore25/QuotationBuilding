package com.quotationbuilding1.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quotationbuilding1.model.Quote;
import com.quotationbuilding1.model.User;
import com.quotationbuilding1.repository.MyRepository;
import com.quotationbuilding1.repository.QuoteRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

@Service
public class MyServiceImp implements MyService {

	@Autowired
	MyRepository myRepository;
	
	@Autowired
	QuoteRepository quoteRepository;
	
	
	public User store(User user) 
	{
		myRepository.save(user);
		return user;
	}
	
	public Quote create(Quote quote) {
		quoteRepository.save(quote);
		return quote;
	}

	@Override
	public Optional<Quote> search(int id) {
		
		return quoteRepository.findById(id);
	}
	
	public List<Quote> getList(){
		return quoteRepository.findAll();
	}
	
	public void delete(int id) {
		quoteRepository.deleteById(id);
	}

}
