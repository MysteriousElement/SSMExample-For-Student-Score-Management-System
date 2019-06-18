package com.ssm.pojo;

import com.ssm.controller.validation.ValidGroupByUser;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class User {
    private Integer uid;

    @Size(min = 4,max = 20,message = "user.username.length.error",groups = ValidGroupByUser.class)
    private String username;
    @NotNull(message = "user.password.length.error",groups = ValidGroupByUser.class)
    private String password;

    private String email;

    private String type;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}