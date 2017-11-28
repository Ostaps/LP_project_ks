package com.epam.individual.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epam.individual.dao.StoneDAO;
import com.epam.individual.entity.Stones;

@Service
public class StoneServiceImpl implements StoneService {

	@Autowired
	private StoneDAO stoneDAO;
	
	@Override
	@Transactional
	public List<Stones> getStones() {
		
		return stoneDAO.getStones();
	}

	@Override
	@Transactional
	public void saveStone(Stones stones) {
		
		stoneDAO.saveStone(stones);
	}

	@Override
	@Transactional
	public Stones getStones(int theId) {
		
		return stoneDAO.getStones(theId);
	}

	@Override
	@Transactional
	public void deleteStone(int theId) {
	
		stoneDAO.deleteStone(theId);
	}

}
