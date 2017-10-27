package com.xianyi.entity;

import java.util.List;

public class Friend {
    private Integer ffid;
    private int userid;
    private int friendid;
    private User userlist;

    public Integer getFfid() {
        return ffid;
    }

    public void setFfid(Integer ffid) {
        this.ffid = ffid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getFriendid() {
        return friendid;
    }

    public void setFriendid(int friendid) {
        this.friendid = friendid;
    }

    public User getUserlist() {
        return userlist;
    }

    public void setUserlist(User userlist) {
        this.userlist = userlist;
    }

    @Override
    public String toString() {
        return "Friend{" +
                "ffid=" + ffid +
                ", userid=" + userid +
                ", friendid=" + friendid +
                ", userlist=" + userlist +
                '}';
    }
}
