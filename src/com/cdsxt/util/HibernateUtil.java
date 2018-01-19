package com.cdsxt.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.Column;

/**
 * @author jcx
 * @className HibernateUtil
 * @description TODO
 */
@Component
public class HibernateUtil {

    @Autowired
    private static SessionFactory sessionFactory;

    public static Session getSession(){
        return sessionFactory.getCurrentSession();
    }
}
