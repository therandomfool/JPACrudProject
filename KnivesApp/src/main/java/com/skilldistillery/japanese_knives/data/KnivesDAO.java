package com.skilldistillery.japanese_knives.data;

import java.util.List;

import com.skilldistillery.japanese_knives.entities.Knives;

public interface KnivesDAO {
	
	
	public Knives findById(int id);
	
	public  Knives update (Knives knives, Integer id);

	public List<Knives> findAll();
	
	public Knives create(Knives  knives);
	
	public boolean delete(Integer id);
	

}
