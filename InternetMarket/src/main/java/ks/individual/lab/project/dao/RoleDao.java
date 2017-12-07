package ks.individual.lab.project.dao;

import ks.individual.lab.project.entity.Role;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface RoleDao {

    Role findRoleByName(String name);
}
