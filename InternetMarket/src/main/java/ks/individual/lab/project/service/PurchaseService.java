package ks.individual.lab.project.service;

import ks.individual.lab.project.entity.Commodity;
import ks.individual.lab.project.entity.Purchase;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface PurchaseService {

    void add(double amount, String userLogin, List<Commodity>commodityList);

    void edit(int id, double amount, String userLogin, List<Commodity>commodityList);

    void delete(int id);

    Purchase findById(int id);

    List<Purchase> findAll();
}
