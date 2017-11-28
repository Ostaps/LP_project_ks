package com.epam.individual.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.epam.individual.dao.StoneDAO;
import com.epam.individual.entity.Stones;
import com.epam.individual.service.StoneService;

@Controller
public class StoneController {

	@Autowired
	private StoneService stoneSevice;
	
	@GetMapping("/")
	public String getMenu(){
		
		
		return "main-menu";
	}
	
	
	@GetMapping("/showList")
	public String listStones(Model model){
		
		List<Stones> theStones = stoneSevice.getStones();
		
		model.addAttribute("stones" , theStones);
		
		return "list-stones";
	}
	
	@GetMapping("/showFormAdd")
	public String showFormAdd(Model model){
		
		Stones theStones = new Stones();
		
	    model.addAttribute("stones", theStones);
		
		return "adding-form";
	}
	
	@RequestMapping("/saveStone")
	public String saveStone(@ModelAttribute("stones") Stones stones){
		
		stoneSevice.saveStone(stones);
		
		return "redirect:/showList";
	}
	
	@RequestMapping("/showFormUpdate")
	public String showFormForUpdate(@RequestParam("stoneId") int theId , Model model ){
		
		Stones theStones = stoneSevice.getStones(theId);
		
		model.addAttribute("stones", theStones);
		
		return "adding-form";
}
	@GetMapping("/deleteStone")
	public String deleteStoneFromPage(@RequestParam("stoneId") int theId ){
	
		stoneSevice.deleteStone(theId);
		
		return "redirect:/showList";
	}
	
	
}