package ks.individual.lab.project.dao;

import ks.individual.lab.project.entity.Commodity;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface CommodityDao {

    void add(Commodity commodity);

    void edit(Commodity commodity);

    void delete(int id);

    Commodity findById(int id);

    List<Commodity> findAll();
}
