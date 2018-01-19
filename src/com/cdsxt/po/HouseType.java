package com.cdsxt.po;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import javax.persistence.*;

/**
 * @author jcx
 * @className HouseType
 * @description TODO
 */
@Entity
@Table(name="love_house_type")
public class HouseType {
    @Id
    @GenericGenerator(name="aa",strategy = "foreign",parameters = {@Parameter(name="property",value="estate")})
    @GeneratedValue(generator = "aa")
    private Integer houseTypeId;

    private Integer bedRoomNum;
    private Integer parlourNum;
    private Integer kitchenNum;
    private Integer toiletNum;
    private String houseTypePath;

    @OneToOne(mappedBy = "houseType",optional = false)
    @PrimaryKeyJoinColumn
    private Estate estate;

    public Integer getHouseTypeId() {
        return houseTypeId;
    }

    public void setHouseTypeId(Integer houseTypeId) {
        this.houseTypeId = houseTypeId;
    }

    public Integer getBedRoomNum() {
        return bedRoomNum;
    }

    public void setBedRoomNum(Integer bedRoomNum) {
        this.bedRoomNum = bedRoomNum;
    }

    public Integer getParlourNum() {
        return parlourNum;
    }

    public void setParlourNum(Integer parlourNum) {
        this.parlourNum = parlourNum;
    }

    public Integer getKitchenNum() {
        return kitchenNum;
    }

    public void setKitchenNum(Integer kitchenNum) {
        this.kitchenNum = kitchenNum;
    }

    public Integer getToiletNum() {
        return toiletNum;
    }

    public void setToiletNum(Integer toiletNum) {
        this.toiletNum = toiletNum;
    }

    public String getHouseTypePath() {
        return houseTypePath;
    }

    public void setHouseTypePath(String houseTypePath) {
        this.houseTypePath = houseTypePath;
    }

    public Estate getEstate() {
        return estate;
    }

    public void setEstate(Estate estate) {
        this.estate = estate;
    }
}
