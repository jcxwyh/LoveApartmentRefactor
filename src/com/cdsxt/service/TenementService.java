package com.cdsxt.service;

import com.cdsxt.po.Tenement;

import java.util.List;

public interface TenementService {
    List<Tenement> findAll();

    void addTene(Tenement tenement);
}
