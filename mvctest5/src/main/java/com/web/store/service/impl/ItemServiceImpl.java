package com.web.store.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.store.dao.ItemDao;
import com.web.store.model.ItemBean;
import com.web.store.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {

	ItemDao itemDao;
	
	@Autowired
	public ItemServiceImpl(ItemDao itemDao) {
		this.itemDao = itemDao;
	}
	
//	@Transactional
//	@Override
//	public List<ItemBean> getItems(String keyword) {
//		
//		return itemDao.getItems(keyword);
//	}
	@Transactional
	@Override
	public List<ItemBean> getAllItems(int page,int pageSize) {
		return itemDao.getAllItems(page,pageSize);
	}
	@Transactional
	@Override
	public List<ItemBean>getItems(String keyword,String order){
		return itemDao.getItems(keyword, order);
	}
	@Transactional
	@Override
	public List<ItemBean> getSort() {
		
		return itemDao.getSort();
	}
	@Transactional
	@Override
	public List<ItemBean> getHotitems() {

		return itemDao.getHotitems();
	}
	@Transactional
	@Override
	public List<ItemBean> getSameType(String format) {

		return itemDao.getSameType(format);
	}
	
	@Transactional
	@Override
	public List<ItemBean> getPrice(String keyword,String order,Integer number,Integer number1) {
		return itemDao.getPrice(keyword,order,number,number1);

	}

	
}
