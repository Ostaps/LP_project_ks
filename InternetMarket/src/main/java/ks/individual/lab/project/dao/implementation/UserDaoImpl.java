package ks.individual.lab.project.dao.implementation;

import ks.individual.lab.project.dao.UserDao;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ks.individual.lab.project.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Override
    @Transactional
    public void add(User user) {
        entityManager.persist(user);
    }

    @Override
    @Transactional
    public void edit(User user) {
        entityManager.merge(user);
    }

    @Override
    @Transactional
    public void delete(int id) {
        entityManager.remove(entityManager.find(User.class, id));
    }

    @Override
    @Transactional
    public User findById(int id) {
        return entityManager.find(User.class, id);
    }

    @Override
    @Transactional
    public List<User> findAll() {
        return entityManager.createQuery("SELECT c FROM User c").getResultList();
    }

    @Override
    public User findByLogin(String login) {
        return (User) entityManager.createQuery("SELECT u FROM User u WHERE u.email = :email OR u.phone = :phone").setParameter("email", login).setParameter("phone", login).getSingleResult();
    }
}
