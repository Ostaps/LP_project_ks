package ks.individual.lab.project.service;

import ks.individual.lab.project.entity.User;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface UserService {

    void add(String name, String secondName, String email, String phone, String password);

    void edit(int id, String name, String secondName, String email, String phone, String password);

    void delete(int id);

    User findById(int id);

    List<User> findAll();
    
    User findByLogin(String login);
}
