package com.cdsxt.po;


import javax.persistence.*;
import java.util.Set;

/**
 * 表说明：Estate-----Room:多对一
 *       Estate-----HouseType:一对一（作为关系维护方）
 *       主键策略：自定义序列
 * @author jcx
 * @className House
 * @description TODO
 */
@Entity
@Table(name="love_estate")
public class Estate {
    @Id
    @SequenceGenerator(name="es",sequenceName = "seq_estate")
    @GeneratedValue(generator = "es")
    private Integer houseId;
    private Integer buildingNo;
    private Integer unitNo;
    private Integer houseNo;

    @OneToMany(cascade = CascadeType.REMOVE,fetch = FetchType.LAZY,mappedBy = "estate")
    private Set<Room> rooms;

    @OneToOne
    @PrimaryKeyJoinColumn
    private HouseType houseType;

    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    public Integer getBuildingNo() {
        return buildingNo;
    }

    public void setBuildingNo(Integer buildingNo) {
        this.buildingNo = buildingNo;
    }

    public Integer getUnitNo() {
        return unitNo;
    }

    public void setUnitNo(Integer unitNo) {
        this.unitNo = unitNo;
    }

    public Integer getHouseNo() {
        return houseNo;
    }

    public void setHouseNo(Integer houseNo) {
        this.houseNo = houseNo;
    }

    public Set<Room> getRooms() {
        return rooms;
    }

    public void setRooms(Set<Room> rooms) {
        this.rooms = rooms;
    }

    public HouseType getHouseType() {
        return houseType;
    }

    public void setHouseType(HouseType houseType) {
        this.houseType = houseType;
    }


}
