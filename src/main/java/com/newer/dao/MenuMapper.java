package com.newer.dao;

import com.newer.domain.Menu;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface MenuMapper {

    //按菜单编号查询菜单对象
    @Results({@Result(id= true,property = "menuId",column = "menuid"),
            @Result(property = "parentId",column = "parentid"),
            @Result(property = "seq",column = "seq"),
            @Result(property = "name",column = "name"),
            @Result(property = "linkUrl",column = "linkurl"),
            @Result(property = "status",column = "status"),
    })
    @Select("select * from sys_menu where id=#{menuId}")
    Menu findById(@Param("menuId") int menuId);

    //查询某个角色的一级菜单集合
    @Results({@Result(id= true,property = "menuId",column = "menuid"),
            @Result(property = "parentId",column = "parentid"),
            @Result(property = "seq",column = "seq"),
            @Result(property = "name",column = "name"),
            @Result(property = "linkUrl",column = "linkurl"),
            @Result(property = "status",column = "status"),
    })
    @Select("SELECT m.menuid,m.name FROM sys_menu m JOIN role_menu rm ON m.menuid=rm.menuid JOIN sys_role r " +
            "ON r.roleid=rm.roleid WHERE r.roleid=#{roleId} AND parentid IS NULL ORDER BY seq")
    List<Menu> findFirst(@Param("roleId") int roleId);

    //查询某个一级菜单的二级菜单集合
    @Results({@Result(id= true,property = "menuId",column = "menuid"),
            @Result(property = "parentId",column = "parentid"),
            @Result(property = "seq",column = "seq"),
            @Result(property = "name",column = "name"),
            @Result(property = "linkUrl",column = "linkurl"),
            @Result(property = "status",column = "status"),
    })
    @Select("SELECT menuid,name,linkurl FROM sys_menu m WHERE parentid=#{parentId} order by seq")
    List<Menu> findSecond(@Param("parentId") int parentId);
}
