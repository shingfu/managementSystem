package com.newer.service;

import com.newer.dao.MenuMapper;
import com.newer.domain.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("MenuService")
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public Menu findById(int menuId) {
        return menuMapper.findById(menuId);
    }

    @Override
    public List<Menu> findFirst(int roleId) {
        return menuMapper.findFirst(roleId);
    }

    @Override
    public List<Menu> findSecond(int parentId,int roleId) {
        return menuMapper.findSecond(parentId,roleId);
    }
}
