package com.cdsxt.po;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

/**
 * 包括房间与车辆
 * @author jcx
 * @className Tenement
 * @description TODO
 */
@Entity
@Table(name="love_tenement")
public class Tenement {
    @Id
    @SequenceGenerator(name="teneSeq",sequenceName = "seq_love_tenement")
    @GeneratedValue(generator = "teneSeq")
    private Integer tenementId;
    @Column
    private String tname;
    @Column
    private Byte gender;
    @Column
    private Integer age;
    @Column
    private String idCardNo;
    @Column
    private String education;
    @Column
    private String mail;
    @Column
    private String phone;
    @Column
    private String headPhoto;

    @OneToOne
    @PrimaryKeyJoinColumn
    private Room room;

    @OneToMany(cascade = CascadeType.REMOVE,fetch = FetchType.LAZY,mappedBy = "tenement")
    private Set<Vehicle> vehicles;

    public Set<Vehicle> getVehicles() {
        return vehicles;
    }

    public void setVehicles(Set<Vehicle> vehicles) {
        this.vehicles = vehicles;
    }

    public Integer getTenementId() {
        return tenementId;
    }

    public void setTenementId(Integer tenementId) {
        this.tenementId = tenementId;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Byte getGender() {
        return gender;
    }

    public void setGender(Byte gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getIdCardNo() {
        return idCardNo;
    }

    public void setIdCardNo(String idCardNo) {
        this.idCardNo = idCardNo;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getHeadPhoto() {
        return headPhoto;
    }

    public void setHeadPhoto(String headPhoto) {
        this.headPhoto = headPhoto;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
}
