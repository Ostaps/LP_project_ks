package ks.individual.lab.project.controllers;

import ks.individual.lab.project.dto.UserDto;
import ks.individual.lab.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/sign-up", method = RequestMethod.POST)
    public String signIn(@RequestParam("name")String name,
                         @RequestParam("secondName")String secondName,
                         @RequestParam("email")String email,
                         @RequestParam("phone")String phone,
                         @RequestParam("password")String password){
        userService.add(name,secondName,email,phone,password);
        return "redirect:/sign-in";
    }

    @RequestMapping(value = "/user/info", method = RequestMethod.GET)
    @ResponseBody
    public UserDto getUserInfo(Principal principal){
        return UserDto.convertToDTO(userService.findByLogin(principal.getName()));
    }
}
