package ks.individual.lab.project.dao.implementation;

import ks.individual.lab.project.dao.RoleDao;
import ks.individual.lab.project.entity.Role;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by Ostap on 20.11.2017.
 */
@Repository
public class RoleDaoImpl implements RoleDao {

    @PersistenceContext(unitName = "Main")
    private EntityManager  entityManager;

    @Override
    public Role findRoleByName(String name) {
        return (Role) entityManager.createQuery("SELECT r FROM Role r WHERE r.name = :name").setParameter("name", name).getSingleResult();
    }
}
