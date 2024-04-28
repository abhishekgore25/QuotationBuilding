package com.quotationbuilding1.service;

import java.util.List;
import java.util.Optional;

import org.hibernate.query.Query;

import com.quotationbuilding1.model.Quote;
import com.quotationbuilding1.model.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

public interface MyService {
	
	

	public User store(User user);
	
	public Quote create(Quote quote);
	
	public Optional<Quote> search(int id);
	
	public List<Quote> getList();
	
	public void delete(int id);
}
