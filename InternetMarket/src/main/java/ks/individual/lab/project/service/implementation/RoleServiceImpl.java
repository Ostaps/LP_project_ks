package ks.individual.lab.project.service.implementation;

import ks.individual.lab.project.dao.RoleDao;
import ks.individual.lab.project.entity.Role;
import ks.individual.lab.project.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Ostap on 20.11.2017.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    @Override
    public Role findRoleByName(String name) {
        return roleDao.findRoleByName(name);
    }
}
