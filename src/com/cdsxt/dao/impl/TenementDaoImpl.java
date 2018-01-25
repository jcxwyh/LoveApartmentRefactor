package com.cdsxt.dao.impl;

import com.cdsxt.dao.TenementDao;
import com.cdsxt.po.Tenement;
import com.cdsxt.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author jcx
 * @className TenementDaoImpl
 * @description TODO
 */
@Repository
public class TenementDaoImpl implements TenementDao{

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return this.sessionFactory.getCurrentSession();
    }

    /**
     * 查询所有住户信息
     * @return
     */
    @Override
    public List<Tenement> findAll() {
        return this.getSession().createCriteria(Tenement.class).list();
    }

    /**
     * 添加住户
     * @param tenement
     * @return
     */
    @Override
    public void addTene(Tenement tenement) {
        this.getSession().save(tenement);
    }

    /**
     * 插入住户信息
     */
    @Test
    public void fillTenes(){

    }
}
