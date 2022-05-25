/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UserModel;

/**
 *
 * @author abhi
 */
public class LoadUsers extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/json;charset=UTF-8");

        HashMap<String, String> user_data = (HashMap<String, String>) request.getSession().getAttribute("user_data");
        int sender = Integer.parseInt(user_data.get("id"));

        List<User> allUsers = new UserModel().getAllUsers();

        Gson gson = new Gson();

        JsonArray jr = new JsonArray();
        JsonObject jo = new JsonObject();

        for (User user : allUsers) {

            if (user.getUserId() != sender) {

                jo = new JsonObject();
                jo.addProperty("id", user.getUserId());
                jo.addProperty("fname", user.getFname());
                jo.addProperty("lname", user.getLname());
                jo.addProperty("email", user.getEmail());
                jo.addProperty("online", user.getOnlineStatus());
                jr.add(jo);
            }
        }
        String jsonarray = jr.toString();
        System.out.println("respomne json arry" + jsonarray);

        try (PrintWriter out = response.getWriter()) {
            out.print(jsonarray);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
