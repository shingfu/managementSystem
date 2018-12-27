package com.newer.service;

import com.newer.domain.ShowUser;
import com.newer.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {

    User findByParam(@Param("userName") String userName, @Param("password") String password);

    int updatePwd(String password,int userId);

    ShowUser findById(@Param("userId")int userId);
}
