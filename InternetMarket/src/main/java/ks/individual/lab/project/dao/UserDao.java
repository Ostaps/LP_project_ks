package ks.individual.lab.project.dao;

import ks.individual.lab.project.entity.User;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface UserDao {

    void add(User user);

    void edit(User user);

    void delete(int id);

    User findById(int id);

    List<User> findAll();

    User findByLogin(String login);

}
