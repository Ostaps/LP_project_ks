package ks.individual.lab.project.service.implementation;

import ks.individual.lab.project.dto.CommodityDto;
import ks.individual.lab.project.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ks.individual.lab.project.dao.CommodityDao;
import ks.individual.lab.project.entity.Commodity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Service
public class CommodityServiceImpl implements CommodityService {

    @Autowired
    private CommodityDao commodityDao;

    @Override
    public void add(String name, String description, double price) {
        commodityDao.add(new Commodity(name,description,price));
    }

    @Override
    public void edit(int id, String name, String description, double price) {
        Commodity commodity = commodityDao.findById(id);
        commodity.setName(name);
        commodity.setDescription(description);
        commodity.setPrice(price);
        commodityDao.edit(commodity);
    }

    @Override
    public void delete(int id) {
        commodityDao.delete(id);
    }

    @Override
    public Commodity findById(int id) {
        return commodityDao.findById(id);
    }

    @Override
    public List<CommodityDto> findAll() {
        List<CommodityDto>dtos = new ArrayList<>();
        List<Commodity>commodities = commodityDao.findAll();

        for (Commodity commodity : commodities) {
            dtos.add(CommodityDto.convertToDTO(commodity));
        }
        return dtos;
    }
}
