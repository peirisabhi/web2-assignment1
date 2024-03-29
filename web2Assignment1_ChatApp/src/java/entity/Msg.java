package entity;
// Generated Jan 20, 2021 12:22:18 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Msg generated by hbm2java
 */
public class Msg  implements java.io.Serializable {


     private Integer msgId;
     private User userByReceiverId;
     private User userBySenderId;
     private String msg;
     private Date dateTime;

    public Msg() {
    }

    public Msg(User userByReceiverId, User userBySenderId, String msg, Date dateTime) {
       this.userByReceiverId = userByReceiverId;
       this.userBySenderId = userBySenderId;
       this.msg = msg;
       this.dateTime = dateTime;
    }
   
    public Integer getMsgId() {
        return this.msgId;
    }
    
    public void setMsgId(Integer msgId) {
        this.msgId = msgId;
    }
    public User getUserByReceiverId() {
        return this.userByReceiverId;
    }
    
    public void setUserByReceiverId(User userByReceiverId) {
        this.userByReceiverId = userByReceiverId;
    }
    public User getUserBySenderId() {
        return this.userBySenderId;
    }
    
    public void setUserBySenderId(User userBySenderId) {
        this.userBySenderId = userBySenderId;
    }
    public String getMsg() {
        return this.msg;
    }
    
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public Date getDateTime() {
        return this.dateTime;
    }
    
    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }




}


