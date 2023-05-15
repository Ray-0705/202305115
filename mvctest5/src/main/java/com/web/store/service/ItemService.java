package com.web.store.service;

import java.util.List;

import com.web.store.model.ItemBean;

public interface ItemService {
//	List<ItemBean> getItems(String keyword);
	
	List<ItemBean> getAllItems(int page,int pageSize);
	
	List<ItemBean> getItems(String keyword, String order);
	
	List<ItemBean> getSort();
	
	List<ItemBean> getHotitems();
	
	List<ItemBean> getSameType(String format);
	
	List<ItemBean> getPrice(String keyword,String order,Integer number,Integer number1);
}
