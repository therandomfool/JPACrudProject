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

		knivesUpdate.setId(knives.getId());
		knivesUpdate.setName(knives.getName());
		knivesUpdate.setMaker(knives.getMaker());
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
		boolean delete= false;
		Knives knives = em.find(Knives.class, id);
		if (knives != null) {
			em.remove(knives);
			em.flush();
		} 
		delete = !em.contains(knives);
//		System.out.println(knifePresent);
		return delete;

	}

	@Override
	public List<Knives> knivesByKeyword(String keyWord) {
		List<Knives> results = null;
		String jpql = "SELECT k FROM Knives k WHERE k.maker = :maker";

		results = em.createQuery(jpql, Knives.class).setParameter("key", keyWord).getResultList();
		return results;

	}

//	@Override
//	public Knives updateKnives(Integer id) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public List<Knives> findKnives() {
		List<Knives> knives;
		knives = em.createQuery("SELECT k FROM Knives k", Knives.class).getResultList();
		return knives;
	}

}
