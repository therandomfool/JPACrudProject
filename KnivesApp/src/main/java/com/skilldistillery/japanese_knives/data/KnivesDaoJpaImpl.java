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

	public Knives updateKnives(Knives knives, Integer id) {
		Knives knivesUpdate = em.find(Knives.class, id);

		knivesUpdate.setHandle(knives.getHandle());
		knivesUpdate.setEdge(knives.getEdge());

		em.flush();
		em.close();
		return knivesUpdate;
	}



	@Override
	public Knives createKnives(Knives knives) {
		em.persist(knives);
		em.flush();	
		em.close();
		return knives;
	
	}

	@Override
	public boolean deleteKnives(Integer id) {
		em.remove(em.find(Knives.class, id));
		em.flush();
		boolean knifePresent = em.contains(em.find(Knives.class, id));
		System.out.println(knifePresent);
		return !knifePresent;
	
	}

	@Override
	public List<Knives> knivesByKeyword(String keyWord) {
		List<Knives> results = null;
		String jpql = "";

		results = em.createQuery(jpql, Knives.class).setParameter("key", keyWord).getResultList();
		return results;
		
	}

	@Override
	public Knives updateKnives(Integer kid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Knives> findKnives(Integer kid) {
		// TODO Auto-generated method stub
		return null;
	}

}
