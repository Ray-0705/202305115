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
public class sortShoseController {
	ItemService itemService;
	
	@Autowired
	public sortShoseController(ItemService itemService) {
		this.itemService = itemService;
	}
	@GetMapping("/sortShose")
	public String list(Model model,@RequestParam(value = "page", defaultValue = "1") int page,
			//每頁的資料筆數
			  @RequestParam(value="pageSize",defaultValue = "19")int pageSize) {
//		List<ItemBean> sortitems =itemService.getSort();
//		List<ItemBean> hotitems = itemService.getHotitems();
//		model.addAttribute("sortitems", sortitems);
//		model.addAttribute("hotitems",hotitems);
		List<ItemBean> allItems = itemService.getAllItems(page, pageSize);
		int start = (page-1)*pageSize;
		int total = allItems.size();
		int end = Math.min(start + pageSize, total);
		List<ItemBean> row = allItems.subList(start, end);
		model.addAttribute("page",page);
		model.addAttribute("pageSize",pageSize);
		model.addAttribute("sum",total);
		model.addAttribute("items",row);
		
		return "sortShose";
	}
	
	
}
