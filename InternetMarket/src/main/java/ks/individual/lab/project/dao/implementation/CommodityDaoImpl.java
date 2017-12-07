package ks.individual.lab.project.dao.implementation;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ks.individual.lab.project.dao.CommodityDao;
import ks.individual.lab.project.entity.Commodity;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Repository
public class CommodityDaoImpl implements CommodityDao{

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Override
    @Transactional
    public void add(Commodity commodity) {
        entityManager.persist(commodity);
    }

    @Override
    @Transactional
    public void edit(Commodity commodity) {
        entityManager.merge(commodity);
    }

    @Override
    @Transactional
    public void delete(int id) {
        entityManager.remove(entityManager.find(Commodity.class, id));
    }

    @Override
    @Transactional
    public Commodity findById(int id) {
        return entityManager.find(Commodity.class, id);
    }

    @Override
    @Transactional
    public List<Commodity> findAll() {
        return entityManager.createQuery("SELECT c FROM Commodity c").getResultList();
    }
}
