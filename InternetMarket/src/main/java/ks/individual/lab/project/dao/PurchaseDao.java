package ks.individual.lab.project.dao;

import ks.individual.lab.project.entity.Purchase;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface PurchaseDao {

    void add(Purchase purchase);

    void edit(Purchase purchase);

    void delete(int id);

    Purchase findById(int id);

    List<Purchase> findAll();
}
