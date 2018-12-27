package com.newer.controller;

import com.newer.util.SecurityCode;
import com.newer.util.SecurityImage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class SecurityImageController {

    @RequestMapping("/Img")
    public void loadSecurityImage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取随机四位验证码
        String securityCode= SecurityCode.getSecurityCode();

        HttpSession session=req.getSession();
        //将验证码保存到session
        session.setAttribute("securityCode", securityCode);
        //设置响应内容类型
        resp.setContentType("image/jpeg");
        //设置浏览器不缓存图片
        resp.setHeader("Pragma", "No-cache");
        resp.setHeader("Cache-Control", "no-cache");
        //设置响应失效
        resp.setDateHeader("Expires", 0);

        ImageIO.write(SecurityImage.getImage(securityCode), "jpeg", resp.getOutputStream());


    }
}
