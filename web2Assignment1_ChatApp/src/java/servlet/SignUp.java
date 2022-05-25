/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entity.User;
import java.io.IOException;
import java.util.Date;
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
public class SignUp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HashMap<String, String> response_data = new HashMap<>();
        HttpSession session = request.getSession();

        try {
            User user = new User(fname, lname, email, password, new Date(), (byte) 1, (byte) 0);
            new UserModel().saveUser(user);

            response_data.put("status", "200");
            session.setAttribute("response_data", response_data);
            response_data.put("message", "Registration Success, Please Login!");

        } catch (Exception e) {
            response_data.put("status", "500");
            response_data.put("message", "Error, Please Try Again Later!");
        }

        response.sendRedirect("index.jsp");

    }

}
