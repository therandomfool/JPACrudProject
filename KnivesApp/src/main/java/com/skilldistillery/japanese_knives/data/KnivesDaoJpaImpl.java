package com.skilldistillery.japanese_knives.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.japanese_knives.entities.Knives;

@Service
@Transactional
public class KnivesDaoJpaImpl implements KnivesDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Knives findById(int id) {
		return em.find(Knives.class, id);
	}

}
