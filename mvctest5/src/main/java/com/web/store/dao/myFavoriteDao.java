package com.web.store.dao;

import java.util.List;

import com.web.store.model.myFavBean;

public interface myFavoriteDao {

	
//	List<myFavBean>getAllmyFavs();
	
//	List<myFavBean>getMyFavs(Integer id);
	
	void addMyFav(String keyword,String name, String url, int price, String img, String sourceimg);
	
	List<myFavBean> getAllFavs();
	
	void delMyFav(int id);
}
