package com.cdsxt.po;

import javax.persistence.*;

/**
 * @author jcx
 * @className Vehicle
 * @description TODO
 */
@Entity
@Table(name="love_vehicle")
public class Vehicle {
    @Id
    @SequenceGenerator(name="lv",sequenceName = "seq_vehicle")
    @GeneratedValue(generator = "lv")
    private Integer vehicleId;
    private String plateNo;
    private String carType;

    @ManyToOne
    @JoinColumn(name="tenementId")
    private Tenement tenement;
}
