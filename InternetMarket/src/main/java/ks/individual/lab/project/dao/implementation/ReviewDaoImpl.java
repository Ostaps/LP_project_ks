package ks.individual.lab.project.dao.implementation;

import ks.individual.lab.project.dao.ReviewDao;
import ks.individual.lab.project.entity.Review;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Repository
public class ReviewDaoImpl implements ReviewDao {

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Override
    @Transactional
    public void add(Review review) {
        entityManager.persist(review);
    }

    @Override
    @Transactional
    public void edit(Review review) {
        entityManager.merge(review);
    }

    @Override
    @Transactional
    public void delete(int id) {
        entityManager.remove(entityManager.find(Review.class, id));
    }

    @Override
    @Transactional
    public Review findById(int id) {
        return entityManager.find(Review.class, id);
    }

    @Override
    @Transactional
    public List<Review> findAll() {
        return entityManager.createQuery("SELECT c FROM Review c").getResultList();
    }
}
