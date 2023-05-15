package com.web.store.service;

import java.util.List;

import com.web.store.model.myFavBean;

public interface myFavService {

//	List<myFavBean>getAllmyFavs();
	
//	List<myFavBean>getMyFavs(Integer id);
	
	void addMyFav(String keyword,String name, String url, int price, String img, String sourceimg);
	
	List<myFavBean> getAllFavs();
	
	void delMyFav(int id);
}
