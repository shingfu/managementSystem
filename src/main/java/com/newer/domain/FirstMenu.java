package com.newer.domain;

import java.io.Serializable;
import java.util.List;
/*
 * 模块菜单对象
 */
public class FirstMenu implements Serializable{
	
	private Menu topMenu;//一级菜单
	private List<Menu> secondMenus;//二级菜单集合
	
	
	public Menu getTopMenu() {
		return topMenu;
	}
	public void setTopMenu(Menu topMenu) {
		this.topMenu = topMenu;
	}
	public List<Menu> getSecondMenus() {
		return secondMenus;
	}
	public void setSecondMenus(List<Menu> secondMenus) {
		this.secondMenus = secondMenus;
	}
	
	

}
