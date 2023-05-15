package com.web.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.myFavBean;
import com.web.store.service.myFavService;

@Controller
public class myFavController {

	myFavService myfavService;
	
	@Autowired
	public myFavController(myFavService myfavService) {
		this.myfavService = myfavService;
	}
	
	@GetMapping("/addMyFav")
	public String getprocessAddNewFav(Model model, @RequestParam("name")String name,
									@RequestParam("url")String url,@RequestParam("price")int price, 
									@RequestParam("img")String img, @RequestParam("sourceimg")String sourceimg,@RequestParam("keyword")String keyword)
									 {
		myfavService.addMyFav(keyword, name, url, price, img, sourceimg);
		model.addAttribute("name", name);
		model.addAttribute("url", url);
		model.addAttribute("price", price);
		model.addAttribute("img", img);
		model.addAttribute("sourceimg", sourceimg);
		model.addAttribute("keyword", keyword);

//		myFavBean mfb = new myFavBean();
//		myfavService.addMyFav(mfb);
//		System.out.println(url);
//		model.addAttribute("myfavbean", mfb);
		return "redirect:/search";
	}
	
	
	@GetMapping("/myFavorite")
	public String list(Model model) {
		List<myFavBean> list = myfavService.getAllFavs();
		model.addAttribute("myfav", list);
		return "myFavorite";
	}
	
	@GetMapping("/delMyFav")
	public String delprocessAddNewFav(Model model, @RequestParam("id")int id) {
		myfavService.delMyFav(id);
		model.addAttribute("id", id);
//		model.addAttribute("name", name);
//		model.addAttribute("url", url);
//		model.addAttribute("price", price);
//		model.addAttribute("img", img);
		return "redirect:/myFavorite";
	}
	
}