package ks.individual.lab.project.dao;

import ks.individual.lab.project.entity.Role;

public interface RoleDao {

    Role findRoleByName(String name);
}
