package ks.individual.lab.project.service;

import ks.individual.lab.project.entity.Role;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface RoleService {

    Role findRoleByName(String name);
}
