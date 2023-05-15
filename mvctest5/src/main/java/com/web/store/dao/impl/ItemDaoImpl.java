package com.web.store.dao.impl;

import java.lang.reflect.Array;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ItemDao;
import com.web.store.model.ItemBean;

@Repository
public class ItemDaoImpl implements ItemDao{
	SessionFactory factory;
	
	@Autowired
	public ItemDaoImpl(SessionFactory factory) {
		this.factory = factory;
	}
	
	@Override
	public List<ItemBean> getAllItems(int page,int pageSize){
		Session session = factory.getCurrentSession();
		String hql = "FROM ItemBean";
		List<ItemBean> list = session.createQuery(hql, ItemBean.class).getResultList();
		return list;
	}

//	@Override 
//	public List<ItemBean> getItems(String keyword) {
//		Session session = factory.getCurrentSession();
//		String hql = "FROM ItemBean i WHERE i.name LIKE :keyword" ;
//		
//		List<ItemBean> items = session.createQuery(hql,ItemBean.class).setParameter("keyword", "%" + keyword + "%").getResultList();
//		return items;
//	}
//	
	@Override
	public List<ItemBean> getItems(String keyword, String order) {
		Session session =factory.getCurrentSession();  
		String hql ="FROM ItemBean WHERE ";
//		System.out.println(keyword);
		
//			System.out.println("yes");
		String[] keywords= keyword.split("\\s");
		for(int i = 0; i < keywords.length; i++) {
			hql +="name LIKE :keyword" + i;
			if(i < keywords.length-1) {
				hql += " AND ";
			}
		}
		hql +=" ORDER BY price "+ order;
		Query query = session.createQuery(hql);
		for(int j=0;j<keywords.length;j++) {
			query.setParameter("keyword"+ j, "%"+keywords[j]+"%");
		}
		
		List<ItemBean> items = query.getResultList();
//		String hql = "FROM ItemBean WHERE name LIKE :keyword ORDER BY " + sort + " " + order;
//		List<ItemBean> items = session.createQuery(hql,ItemBean.class).setParameter("keyword", "%" + keyword + "%").getResultList();
		
		  return items;
		}
	
	@Override
	public List<ItemBean> getSort(){
		Session session =factory.getCurrentSession();  
		String hql = "FROM ItemBean WHERE subtitle LIKE :word1 OR subtitle LIKE :word2 OR subtitle LIKE :word3";
		List<ItemBean> list = session.createQuery(hql, ItemBean.class)
		    .setParameter("word1", "%Dunk%")
		    .setParameter("word2", "%Air Max%")
		    .setParameter("word3", "%Air force%")
		    .getResultList();
		return list;
	}
	
	@Override
	public List<ItemBean> getHotitems(){
		Session session =factory.getCurrentSession(); 
		String hql = "FROM ItemBean WHERE subtitle LIKE '%hot%'";
		List<ItemBean> hotitems = session.createQuery(hql, ItemBean.class).getResultList();
		
		return hotitems;
	}
	
	@Override
	public List<ItemBean> getSameType(String format){
		Session session =factory.getCurrentSession();
		String hql = "FROM ItemBean WHERE type LIKE :format ORDER BY price ASC" ;
		List<ItemBean> list = session.createQuery(hql,ItemBean.class).setParameter("format",format).getResultList();
		
		return list; 
	}

	@Override
	public List<ItemBean> getPrice(String keyword ,String order ,Integer number,Integer number1) {
		Session session =factory.getCurrentSession();  
		String hql ="FROM ItemBean WHERE ";
//		System.out.println(keyword);
		
//			System.out.println("yes");
		String[] keywords= keyword.split("\\s");
		for(int i = 0; i < keywords.length; i++) {
			hql +="name LIKE :keyword" + i;
			if(i < keywords.length) {
				hql += " AND ";
			}
		}
		hql +="price  BETWEEN "+ number +" AND "+ number1 +" ORDER BY price "+ order;
		Query query = session.createQuery(hql);
		for(int j=0;j<keywords.length;j++) {
			query.setParameter("keyword"+ j, "%"+keywords[j]+"%");
		}
		
		List<ItemBean> items = query.getResultList();
		
		  return items;
		
		
//		Session session =factory.getCurrentSession();  
//		String hql = "FROM ItemBean WHERE name LIKE :keyword AND price  BETWEEN " + number +" AND " +number1+ " ORDER BY price";
//
//		List<ItemBean> items = session.createQuery(hql, ItemBean.class)
//		        .setParameter("keyword", "%" + keyword + "%")
//		        .getResultList();
//		return items;
		}

	
}
