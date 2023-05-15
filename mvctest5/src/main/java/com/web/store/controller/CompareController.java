package com.web.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.ItemBean;
import com.web.store.service.ItemService;

@Controller
public class CompareController {
	ItemService itemService;
	@Autowired
	public CompareController(ItemService itemService) {
		this.itemService = itemService;		
	}
	
	@GetMapping("/homePage")
	public String list(Model model ,@RequestParam("type")String format,
									@RequestParam("id")int id){
		int index=0;
		int i =0;
		ItemBean main = null;
		List<ItemBean> list = itemService.getSameType(format);
		for(ItemBean c: list) {
//			System.out.println(c.getId());
			
			if(c.getId()==id) {
				main = c;
				index=i;
			}
			i++;
		}
		list.remove(index);
//		System.out.println(main.getId());
		model.addAttribute("main",main);
		model.addAttribute("items",list);
		return "homePage";
	}
	


	
	
}
