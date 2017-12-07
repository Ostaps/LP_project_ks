package ks.individual.lab.project.service;

import ks.individual.lab.project.dto.CommodityDto;
import ks.individual.lab.project.entity.Commodity;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface CommodityService {

    void add(String name, String description, double price);

    void edit(int id, String name, String description, double price);

    void delete(int id);

    Commodity findById(int id);

    List<CommodityDto> findAll();
}
