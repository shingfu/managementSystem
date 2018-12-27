package com.newer.domain;

import java.io.Serializable;
import java.util.List;

public class ShowUser implements Serializable{
	
	private Integer userId;
	private String userName;
	private Integer roleId;
	private String roleName;
	private List<FirstMenu> menus;


	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public List<FirstMenu> getMenus() {
		return menus;
	}

	public void setMenus(List<FirstMenu> menus) {
		this.menus = menus;
	}
	
	

}
