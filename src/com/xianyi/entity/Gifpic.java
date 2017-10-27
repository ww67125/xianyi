package com.xianyi.entity;

public class Gifpic {
    private int id;
    private String photo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Gifpic{" +
                "id=" + id +
                ", photo='" + photo + '\'' +
                '}';
    }
}
