/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.User;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import util.HibernateUtil;

/**
 *
 * @author abhi
 */
public class UserModel {

    SessionFactory sessionFactory;
    Session session;

    public UserModel() {
        sessionFactory = HibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();

    }

    public User saveUser(User u) {
        Transaction transaction = session.beginTransaction();
        session.save(u);
        transaction.commit();

        return u;
    }

    public User chekIsUser(String email, String password) {

        Criteria cr = session.createCriteria(User.class);
        cr.add(Restrictions.eq("email", email));
        cr.add(Restrictions.eq("password", password));
        cr.add(Restrictions.eq("activeStatus", (byte) 1));
        List<User> uslist = cr.list();
        if (uslist.size() > 0) {
            return uslist.iterator().next();
        } else {
            return null;
        }

    }

    public User chekIsUserAvailable(String email) {

        Criteria cr = session.createCriteria(User.class);
        cr.add(Restrictions.eq("email", email));
        List<User> uslist = cr.list();
        if (uslist.size() > 0) {
            return uslist.iterator().next();
        } else {
            return null;
        }

    }

    public List<User> getAllUsers() {

        Criteria cr = session.createCriteria(User.class);
        cr.add(Restrictions.eq("activeStatus", (byte) 1));
        return cr.list();
        
    }

    public static void main(String[] args) {
//        System.out.println(new UserModel().chekIsUser("abhi@gmail.com", "1233"));

//        System.out.println(new UserModel().saveUser(new User(1, "abhi", "danajaya", "abhi@gmail.com", "123", new Date(), (byte)1, (byte)1)));
    }

}
