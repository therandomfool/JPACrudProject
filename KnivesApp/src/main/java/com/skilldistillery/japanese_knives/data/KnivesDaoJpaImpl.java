package com.skilldistillery.japanese_knives.data;

import java.util.List;

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
		if (knives != null) {
			return false;
		}
		return true;

	}

	public List<Knives> findAll() {
		String sql = "SELECT knives FROM Knives knives";
		List<Knives> knives = em.createQuery(sql, Knives.class).getResultList();
		return knives;
	}

	public Knives update(Knives knives, Integer id) {
		Knives uKnives = em.find(Knives.class, id);
		uKnives.setName(knives.getName());
		return uKnives;
	}

}
