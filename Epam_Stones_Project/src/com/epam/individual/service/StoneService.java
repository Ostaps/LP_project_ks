package com.epam.individual.service;

import java.util.List;

import com.epam.individual.entity.Stones;

public interface StoneService {

	public List<Stones> getStones();

	public void saveStone(Stones stones);

	public Stones getStones(int theId);

	public void deleteStone(int theId);
}
