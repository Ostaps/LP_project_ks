package com.epam.individual.dao;

import java.util.List;

import com.epam.individual.entity.Stones;

public interface StoneDAO {

	public List<Stones> getStones();

	public void saveStone(Stones stones);

	public Stones getStones(int theId);

	public void deleteStone(int theId);


	
}
