package com.newer.service;

import com.newer.domain.Menu;

import java.util.List;

public interface MenuService {

    Menu findById(int menuId);

    List<Menu> findFirst(int roleId);

    List<Menu> findSecond(int parentId);


}
