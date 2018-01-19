package com.cdsxt.po;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import javax.persistence.*;
import java.util.Date;

/**
 * @author jcx
 * @className Room
 * @description TODO
 */
@Entity
@Table(name="love_room")
public class Room {
    @Id
    @GenericGenerator(name="fr",strategy = "foreign",parameters = {@Parameter(name="property",value="tenement")})
    @GeneratedValue(generator = "fr")
    private Integer roomId;
    private String roomName;
    private Byte rented;
    private Date startDate;
    private Date endDate;

    @OneToOne(mappedBy = "room")
    private Tenement tenement;

    @ManyToOne
    @JoinColumn(name="houseId")
    private Estate estate;


    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public Byte getRented() {
        return rented;
    }

    public void setRented(Byte rented) {
        this.rented = rented;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Tenement getTenement() {
        return tenement;
    }

    public void setTenement(Tenement tenement) {
        this.tenement = tenement;
    }

    public Estate getEstate() {
        return estate;
    }

    public void setEstate(Estate estate) {
        this.estate = estate;
    }
}
