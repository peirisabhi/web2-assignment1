/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entity.User;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserModel;

/**
 *
 * @author abhi
 */
public class SignIn extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new UserModel().chekIsUser(email, password);
        HttpSession session = request.getSession();

        if (user != null) {
            HashMap<String, String> user_data = new HashMap<String, String>();
            user_data.put("id", String.valueOf(user.getUserId()));
            user_data.put("fname", user.getFname());
            user_data.put("lname", user.getLname());
            user_data.put("email", user.getEmail());

            session.setAttribute("user_data", user_data);
            response.sendRedirect("home.jsp");
        } else {
            session.setAttribute("response_data", "Invalid Username Or Password!");
            response.sendRedirect("index.jsp");
        }

    }

}
