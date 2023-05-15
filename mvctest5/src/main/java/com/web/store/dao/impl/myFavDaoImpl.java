package com.web.store.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.myFavoriteDao;
import com.web.store.model.myFavBean;

@Repository
public class myFavDaoImpl implements myFavoriteDao{

	SessionFactory factory;
	
	@Autowired
	public myFavDaoImpl(SessionFactory factory) {		//可自動將bean注入到此類別中
		this.factory = factory;
	}
	
	@Override
	public void addMyFav(String keyword,String name, String url, int price, String img, String sourceimg){
		Session session = factory.getCurrentSession();
		myFavBean mfb = new myFavBean();
		mfb.setName(name);
		mfb.setUrl(url);
		mfb.setPrice(price);
		mfb.setImg(img);
		mfb.setSourceimg(sourceimg);
		session.save(mfb);
	}
	
	@Override
	public List<myFavBean> getAllFavs(){
		Session session = factory.getCurrentSession();
		String hql = "FROM myFavBean";
		List<myFavBean> list = session.createQuery(hql, myFavBean.class).getResultList();
		return list;
	}
	
	@Override
	public void delMyFav(int id) {
		Session session = factory.getCurrentSession();
		myFavBean mfb = new myFavBean();
		mfb.setId(id);
//		mfb.setName(name);
//		mfb.setUrl(url);
//		mfb.setPrice(price);
//		mfb.setImg(img);
		session.remove(mfb);
	}
}