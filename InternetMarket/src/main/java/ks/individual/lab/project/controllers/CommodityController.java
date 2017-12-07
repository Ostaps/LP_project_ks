package ks.individual.lab.project.controllers;

import ks.individual.lab.project.dto.CommodityDto;
import ks.individual.lab.project.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Controller
public class CommodityController {

    @Autowired
    private CommodityService commodityService;

    @RequestMapping(value = "/commodities/all", method = RequestMethod.GET)
    @ResponseBody
    public List<CommodityDto> findAllCommodities() {
        return commodityService.findAll();
    }
}
