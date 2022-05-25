/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import entity.Msg;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MsgModel;

/**
 *
 * @author abhi
 */
public class LoadMessages extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int receiver = Integer.parseInt(request.getParameter("receiver"));
        HashMap<String, String> user_data = (HashMap<String, String>) request.getSession().getAttribute("user_data");
        int sender = Integer.parseInt(user_data.get("id"));

        List<Msg> messageList = new MsgModel().getMessageList(sender, receiver);

        JsonArray jr = new JsonArray();
        JsonObject jo = new JsonObject();

        for (Msg msg : messageList) {

            DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
            String date = dateFormat.format(msg.getDateTime());
            
            String style = "replies";
            if(msg.getUserBySenderId().getUserId() == sender){
                style = "sent";
            }

            jo = new JsonObject();
            jo.addProperty("id", msg.getMsgId());
            jo.addProperty("msg", msg.getMsg());
            jo.addProperty("time", date);
            jo.addProperty("reciver", msg.getUserByReceiverId().getUserId());
            jo.addProperty("sender", msg.getUserBySenderId().getUserId());
            jo.addProperty("style", style);
            jr.add(jo);
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
