/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MsgModel;

/**
 *
 * @author abhi
 */
public class SendMessage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        
        int receiver = Integer.parseInt(request.getParameter("receiver"));
        String msg = request.getParameter("msg");
        
        
        HashMap<String, String> user_data = (HashMap<String, String>) request.getSession().getAttribute("user_data");
        int sender = Integer.parseInt(user_data.get("id"));
        
        new MsgModel().saveMessage(sender, receiver, msg);
        
        response.getWriter().write("200");
        
    }


}
