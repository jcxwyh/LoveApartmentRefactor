package com.cdsxt.service.impl;

import com.cdsxt.dao.TenementDao;
import com.cdsxt.po.Tenement;
import com.cdsxt.service.TenementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jcx
 * @className TenementServiceImpl
 * @description TODO
 */
@Service
public class TenementServiceImpl implements TenementService{

    @Autowired
    private TenementDao tenementDao;

    @Override
    public List<Tenement> findAll() {
        return this.tenementDao.findAll();
    }

    @Override
    public void addTene(Tenement tenement) {
        this.tenementDao.addTene(tenement);
    }
}
