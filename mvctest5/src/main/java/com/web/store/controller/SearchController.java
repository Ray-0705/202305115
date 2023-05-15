package com.web.store.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.ItemBean;
import com.web.store.service.ItemService;

@Controller
public class SearchController {
	ItemService itemService;
	
	@Autowired
	public SearchController(ItemService itemService) {
		this.itemService = itemService;
	}
	
//	@GetMapping("/search")
//	public String list(Model model, @RequestParam("keyword") String keyword) {
////		System.out.println(keyword);
//		if(keyword != null) {
//			List<ItemBean> list = itemService.getItems(keyword);
//			int tatol = list.size();
//			model.addAttribute("sum",tatol);
//			model.addAttribute("items",list);	
//		}
//		
//		return "search";
//	}
	
	@GetMapping("/search")
	public String list(Model model, 
	                   @RequestParam("keyword") String keyword, 
	                   @RequestParam(value = "order", defaultValue = "asc") String order) {
	  if(keyword != null) {
	    List<ItemBean> list = itemService.getItems(keyword, order);
	    int total = list.size();
	    	    	    
	    model.addAttribute("sum", total);
	    model.addAttribute("items", list);
	    model.addAttribute("order", order);
	  }
	  return "search";
	}

	
	

	@GetMapping("/price")
	public String list1(Model model,
						@RequestParam("keyword")String keyword,
						@RequestParam(value = "order", defaultValue = "asc") String order,						
						@RequestParam("number")Integer number,
						@RequestParam("number1")Integer number1) {
		 if(keyword != null) {
			    List<ItemBean> list = itemService.getPrice(keyword,order,number,number1);
			    int total = list.size();
			    model.addAttribute("sum", total);
			    model.addAttribute("items", list);
			    model.addAttribute("number",number);
			    model.addAttribute("number1",number);

		 }
		 return "price";
	}
	
}
