package ks.individual.lab.project.service.implementation;

import ks.individual.lab.project.dao.UserDao;
import ks.individual.lab.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ks.individual.lab.project.dao.RoleDao;
import ks.individual.lab.project.entity.User;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Service
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        User user = userDao.findByLogin(login);
        if (user == null) {
            throw new UsernameNotFoundException("Bad Credentials");
        }
        Collection<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(user.getRole().getName().toUpperCase()));
        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), authorities);
    }

    @Override
    public void add(String name, String secondName, String email, String phone, String password) {
        User user = new User(name,secondName,email,phone,password);
        user.setRole(roleDao.findRoleByName("USER"));
        userDao.add(user);
    }

    @Override
    public void edit(int id, String name, String secondName, String email, String phone, String password) {
        User user = userDao.findById(id);
        user.setName(name);
        user.setSecondName(secondName);
        user.setEmail(email);
        user.setPhone(phone);
        user.setPassword(password);
        userDao.edit(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public User findById(int id) {
        return userDao.findById(id);
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public User findByLogin(String login) {
        return userDao.findByLogin(login);
    }
}
