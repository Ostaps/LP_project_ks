package ks.individual.lab.project.dao.implementation;

import ks.individual.lab.project.entity.Purchase;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ks.individual.lab.project.dao.PurchaseDao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Repository
public class PurchaseDaoImpl implements PurchaseDao {


    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Override
    @Transactional
    public void add(Purchase purchase) {
        entityManager.persist(purchase);
    }

    @Override
    @Transactional
    public void edit(Purchase purchase) {
        entityManager.merge(purchase);
    }

    @Override
    @Transactional
    public void delete(int id) {
        entityManager.remove(entityManager.find(Purchase.class, id));
    }

    @Override
    @Transactional
    public Purchase findById(int id) {
        return entityManager.find(Purchase.class, id);
    }

    @Override
    @Transactional
    public List<Purchase> findAll() {
        return entityManager.createQuery("SELECT c FROM Purchase c").getResultList();
    }
}
