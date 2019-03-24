package com.xt.ajax.app.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @author xt
 * @create 2019/3/23 19:16
 * @Desc
 */
public class ValidateUsernameServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> names = Arrays.asList("AAA", "BBB", "CCC");
        String username = req.getParameter("username");
        String msg = null;
        if(names.contains(username)){
            msg = "<font color='red'>该用户名已存在</font>";
        } else {
            msg = "<font color='green'>该用户名可以使用</font>";
        }
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().print(msg);

    }
}
