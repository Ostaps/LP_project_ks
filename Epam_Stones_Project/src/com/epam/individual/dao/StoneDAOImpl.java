package com.epam.individual.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.epam.individual.entity.Stones;

@Repository
public class StoneDAOImpl implements StoneDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<Stones> getStones() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Stones> query = (Query<Stones>) session.createQuery("from Stones order by price" ,Stones.class);
		
		List<Stones> stones = query.getResultList();
		
		return stones;
	}


	@Override
	public void saveStone(Stones stones) {
	
		Session session = sessionFactory.getCurrentSession();
		session.save(stones);
		
		
	}


	@Override
	public Stones getStones(int theId) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Stones theStones = session.get(Stones.class, theId);
		
		return theStones;
	}


	@Override
	public void deleteStone(int theId) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Stones> theQuery = (Query<Stones>) session.createQuery("delete from Stones where id=:stoneId");
		
		theQuery.setParameter("stoneId", theId);
		
		theQuery.executeUpdate();
		
	}

}
