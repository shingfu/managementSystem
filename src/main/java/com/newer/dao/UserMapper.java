package com.newer.dao;

import com.newer.domain.ShowUser;
import com.newer.domain.User;
import org.apache.ibatis.annotations.*;

public interface UserMapper {

    //验证用户账号密码
    @ResultMap(value = "user2")
    @Select("select * from sys_user where username=#{userName} and password=#{password}")
    User findByParam(@Param("userName") String userName, @Param("password") String password);

    //修改密码
    @Update("update sys_user set password=#{arg0} where userid = #{arg1}")
    int updatePwd(String password, int userId);

    //按用户编号查询用户和角色信息
    @ResultMap(value = "user1")
    @Select("select u.userid,u.username,r.roleid, r.name as rolename from sys_user u"
            + " join user_role ur on u.userid=ur.userid join sys_role r"
            + " on ur.roleid=r.roleid where u.userid=#{userId}")
    ShowUser findById(@Param("userId") int userId);

}
