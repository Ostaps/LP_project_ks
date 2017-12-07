package ks.individual.lab.project.controllers;

import ks.individual.lab.project.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Ostap on 20.11.2017.
 */
@Controller
public class BaseController {

    private final CommodityService commodityService;

    @Autowired
    public BaseController(CommodityService commodityService) {
        this.commodityService = commodityService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/sign-in", method = RequestMethod.GET)
    public String signIn() {
        return "signIn";
    }

    @RequestMapping(value = "/sign-up", method = RequestMethod.GET)
    public String signUp() {
        return "signUp";
    }

}
