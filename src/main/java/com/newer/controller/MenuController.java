package com.newer.controller;

import com.newer.domain.FirstMenu;
import com.newer.domain.Menu;
import com.newer.domain.ShowUser;
import com.newer.domain.User;
import com.newer.service.MenuService;
import com.newer.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/menus")
public class MenuController {

    @Autowired
    private MenuService menuService;
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/load", method = RequestMethod.GET)
    public Map<String,Object> findMenu(HttpSession session){

        User user=(User)session.getAttribute("loginer");
        //查询用户角色信息
        ShowUser showuser=userService.findById(user.getUserId());
        //根据用户角色编号查询一级菜单集合
        List<Menu> firstlist=menuService.findFirst(showuser.getRoleId());

        List<FirstMenu> menus=new ArrayList<>();

        //遍历一级菜单集合
        firstlist.forEach(menu->{
            FirstMenu fmenu=new FirstMenu();
            //设置一级菜单对象
            fmenu.setTopMenu(menu);
            //按一级菜单编号查询二级菜单集合
            List<Menu> mlist=menuService.findSecond(menu.getMenuId());
            fmenu.setSecondMenus(mlist);
            //将模块菜单添加到集合
            menus.add(fmenu);
            });
        //将菜单集合数据设置到用户
        showuser.setMenus(menus);
        Map<String,Object> results = new HashMap<>();
        results.put("showuser", showuser);
        return results;
    }


}
