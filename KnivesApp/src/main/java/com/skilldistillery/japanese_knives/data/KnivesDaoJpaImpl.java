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

	public Knives create(Knives knives) {
		em.persist(knives);
		em.flush();
		return knives;
	}

	public boolean delete(Integer id) {
		em.remove(em.find(Knives.class, id));
		Knives knives = em.find(Knives.class, id);
		return false;
		
	}

	public void findAll() {
		
	}
	
	public void update() {
		
		
	}

}
