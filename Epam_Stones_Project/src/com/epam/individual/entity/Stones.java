package com.epam.individual.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Stones")
public class Stones {

	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="type")
	private String type;
	
	@Column(name="jewel")
	private String jewel;
	
	@Column(name="punish")
	private int punish;
	
	@Column(name="price")
	private int price;

	public Stones() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getJewel() {
		return jewel;
	}

	public void setJewel(String jewel) {
		this.jewel = jewel;
	}

	public int getPunish() {
		return punish;
	}

	public void setPunish(int punish) {
		this.punish = punish;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Stones [id=" + id + ", type=" + type + ", jewel=" + jewel + ", punish=" + punish + ", price=" + price
				+ "]";
	}
	
	
}
