package com.cdsxt.po;

import javax.persistence.*;

/**
 * @author jcx
 * @className Admin
 * @description TODO
 */
@Entity
@Table(name="lave_admin")
public class Admin {
    @Id
    @SequenceGenerator(name="adminSeq",sequenceName = "seq_love_admin")
    @GeneratedValue(generator = "adminSeq")
    private Integer id;
    @Column
    private String username;
    @Column
    private String pwd;
    @Column
    private String phone;
    @Column
    private String email;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", pwd='" + pwd + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
