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
	public Knives updateKnives(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Knives> findKnives(Integer kid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Knives createKnives(Knives knives) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteKnives(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Knives> knivesByKeyword(String keyWord) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Knives updateKnives(Knives knives, Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	
}
