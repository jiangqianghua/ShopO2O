package com.jqh.o2o.entity;

import java.util.Date;

// 店铺详细信息
public class Shop {
	private Long shopId ; 
	
	private String shopName ; 
	
	private String shopDesc ; 
	
	private String shopAddr ; 
	
	private String phone ; 
	
	private Integer priority ; 
	
	private Date creaateTime ; 
	
	private Date lastEditTime ; 
	
	// -1 不可用  0 审核中  1 可用
	private Integer enableStatus ; 
	//  超级管理员给店家的提醒
	private String advice ;
	
	private Area area ; 
	
	private PersonInfo owner ; 
	
	private ShopCategory shopCategory;

	public Long getShopId() {
		return shopId;
	}

	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopDesc() {
		return shopDesc;
	}

	public void setShopDesc(String shopDesc) {
		this.shopDesc = shopDesc;
	}

	public String getShopAddr() {
		return shopAddr;
	}

	public void setShopAddr(String shopAddr) {
		this.shopAddr = shopAddr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getPriority() {
		return priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	public Date getCreaateTime() {
		return creaateTime;
	}

	public void setCreaateTime(Date creaateTime) {
		this.creaateTime = creaateTime;
	}

	public Date getLastEditTime() {
		return lastEditTime;
	}

	public void setLastEditTime(Date lastEditTime) {
		this.lastEditTime = lastEditTime;
	}

	public Integer getEnableStatus() {
		return enableStatus;
	}

	public void setEnableStatus(Integer enableStatus) {
		this.enableStatus = enableStatus;
	}

	public String getAdvice() {
		return advice;
	}

	public void setAdvice(String advice) {
		this.advice = advice;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public PersonInfo getOwner() {
		return owner;
	}

	public void setOwner(PersonInfo owner) {
		this.owner = owner;
	}

	public ShopCategory getShopCategory() {
		return shopCategory;
	}

	public void setShopCategory(ShopCategory shopCategory) {
		this.shopCategory = shopCategory;
	}
	
	
}
