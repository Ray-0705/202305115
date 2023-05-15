package com.web.store.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.store.dao.myFavoriteDao;
import com.web.store.model.myFavBean;
import com.web.store.service.myFavService;

@Service
public class myFavServiceImpl implements myFavService{

	myFavoriteDao myfavoriteDao;
	
	@Autowired
	public myFavServiceImpl(myFavoriteDao myfavoriteDao) {
		this.myfavoriteDao = myfavoriteDao;
	}
	@Transactional			//交易機制
	@Override
	public void addMyFav(String keyword,String name, String url, int price, String img, String sourceimg) {
//		myfavoriteDao.addMyFav(name,url,price,img);
//		return myfavoriteDao.addMyFav(name, url, price, img);
		myfavoriteDao.addMyFav(keyword,name, url, price, img, sourceimg);
	}
	
	@Transactional
	@Override
	public List<myFavBean> getAllFavs(){
		return myfavoriteDao.getAllFavs();
	}
	
	@Transactional			//交易機制
	@Override
	public void delMyFav(int id) {
//		myfavoriteDao.addMyFav(name,url,price,img);
//		return myfavoriteDao.addMyFav(name, url, price, img);
		myfavoriteDao.delMyFav(id);
	}

}
