package com.newer.controller;

import com.newer.domain.User;
import com.newer.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/users")  //名称空间
public class UserController {

    @Autowired
    private UserService userService;

    //用户登录
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public Map<String,Object> login(@RequestParam("userName") String userName,
                        @RequestParam("password") String password,
                        @RequestParam("verifycode") String verifycode,
                        HttpSession session){
        String securityCode=(String)session.getAttribute("securityCode");

        Map<String,Object> results = new HashMap<>();
        //对比验证码
        if(securityCode.equals(verifycode)) {
            //向下调用业务方法，得到模型数据
            User user = userService.findByParam(userName, password);
            if (user != null) {
                session.setAttribute("loginer", user);
                return results;
            } else {
                results.put("msg", "用户名或密码错误！");
                return results;
            }
        }else{
            results.put("msg","验证码不正确！");
            return results;
        }

    }


    //修改密码
    @RequestMapping(value = "/changePwd",method = RequestMethod.POST)
    public Map<String,Object> updatePwd(HttpServletRequest req){
        String pwd = req.getParameter("pwd");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginer");

        Map<String,Object> results = new HashMap<>();
        if (user.getPassword().equals(pwd)) {
            int userId=user.getUserId();
            int count = userService.updatePwd(password,userId);
            if (count > 0) {
                results.put("changed", true);
            } else {
                results.put("msg", "密码修改失败!");
            }
        } else {
            results.put("msg", "原始密码错误!");
        }
        return  results;
    }



    // 退出，清除session
    @RequestMapping(value = "/exit",method = RequestMethod.GET)
    public Map<String,Object> exit(HttpServletRequest req) {

        Map<String,Object> results = new HashMap<>();
        HttpSession session = req.getSession();

        session.removeAttribute("loginer");

        session.setMaxInactiveInterval(0);

        session.invalidate();
        results.put("msg", "退出成功!");
        return results;
    }


}
