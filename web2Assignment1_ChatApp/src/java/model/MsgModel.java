/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Msg;
import entity.User;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import util.HibernateUtil;

/**
 *
 * @author abhi
 */
public class MsgModel {

    SessionFactory sf;
    Session ses;

    public MsgModel() {
        sf = HibernateUtil.getSessionFactory();
        ses = sf.openSession();

    }

    public void saveMessage(int senderId, int receiverId, String Message) {
        Transaction tr = ses.beginTransaction();
        Msg msg = new Msg();
        User sender = (User) ses.load(User.class, senderId);
        User receiver = (User) ses.load(User.class, receiverId);

        msg.setUserByReceiverId(receiver);
        msg.setUserBySenderId(sender);
        msg.setMsg(Message);
        msg.setDateTime(new Date());

        ses.save(msg);
        tr.commit();

    }

    public List<Msg> getMessageList(int senderId, int receiverId) {
        ses = sf.openSession();
        User sender = (User) ses.load(User.class, senderId);
        User receiver = (User) ses.load(User.class, receiverId);
        
//        Criteria cr = ses.createCriteria(Msg.class);
//        cr.add(Restrictions.eq("userByReceiverId", receiver));
//        cr.add(Restrictions.eq("userBySenderId", sender));
        Query q = ses.createQuery("SELECT m FROM Msg m WHERE (m.userBySenderId.id = '"+senderId+"' OR m.userBySenderId.id = '"+receiverId+"') AND (m.userByReceiverId.id = '"+senderId+"' OR m.userByReceiverId.id = '"+receiverId+"') ");

        List<Msg> ls = q.list();
        ses.close();
        return ls;
    }

    public static void main(String[] args) {
//        new MsgModel().saveMessage(2, 3, "45  232 23 232 g f 3 2");
        
        List<Msg> cl = new MsgModel().getMessageList(1, 5);
        for (Msg chatlog : cl) {
            System.out.println(chatlog.getMsgId() + " | " + chatlog.getDateTime() + "" + chatlog.getMsg());
        }
        
    }

}
