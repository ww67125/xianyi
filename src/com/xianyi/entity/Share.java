package com.xianyi.entity;

import java.util.Date;

public class Share {
    private Integer shareid;
    private String sharename;
    private String content;
    private String Address;
    private String photo;
    private Integer userid;
    private Date addtime;
    private Integer likecount;
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getLikecount() {
        return likecount;
    }

    public void setLikecount(Integer likecount) {
        this.likecount = likecount;
    }

    public Integer getShareid() {
        return shareid;
    }

    public void setShareid(Integer shareid) {
        this.shareid = shareid;
    }

    public String getSharename() {
        return sharename;
    }

    public void setSharename(String sharename) {
        this.sharename = sharename;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    @Override
    public String toString() {
        return "Share{" +
                "shareid=" + shareid +
                ", sharename='" + sharename + '\'' +
                ", content='" + content + '\'' +
                ", Address='" + Address + '\'' +
                ", photo='" + photo + '\'' +
                ", userid=" + userid +
                ", addtime=" + addtime +
                ", likecount=" + likecount +
                ", user=" + user +
                '}';
    }
}
