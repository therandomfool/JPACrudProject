package com.skilldistillery.japanese_knives.data;

import java.util.List;

import com.skilldistillery.japanese_knives.entities.Knives;

public interface KnivesDAO {

	public Knives findById(int id);

//	public Knives updateKnives(Integer id);

	public List<Knives> findKnives();

	public Knives createKnives(Knives knives);

	public boolean deleteKnives(Integer id);

	public List<Knives> knivesByKeyword(String keyWord);

	public Knives updateKnives(Knives knives, Integer id);

}
