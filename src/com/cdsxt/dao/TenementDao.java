package com.cdsxt.dao;

import com.cdsxt.po.Tenement;

import java.util.List;

public interface TenementDao {
    List<Tenement> findAll();

    void addTene(Tenement tenement);
}
