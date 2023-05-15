package com.web.store.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MyFavorite")
public class myFavBean {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer Id;
	private String url;
	private String img;
	private String name;
	private Integer price;
	private String sourceimg;
	
	
	public myFavBean(Integer id, String url, String img, String name, Integer price, String sourceimg) {
		this.Id = id;
		this.url = url;
		this.img = img;
		this.name = name;
		this.price = price;
		this.sourceimg = sourceimg;
	}
	
	public myFavBean() {
		
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getSourceimg() {
		return sourceimg;
	}

	public void setSourceimg(String sourceimg) {
		this.sourceimg = sourceimg;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
