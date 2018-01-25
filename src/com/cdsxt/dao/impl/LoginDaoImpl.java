package com.cdsxt.dao.impl;

import com.cdsxt.dao.LoginDao;
import com.cdsxt.po.Admin;
import com.cdsxt.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Objects;

/**
 * @author jcx
 * @className LoginDaoImpl
 * @description TODO
 */
@Repository
public class LoginDaoImpl implements LoginDao{

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public boolean valiUser(Admin admin) {
        Session session = this.getSession();
        Criteria cri = session.createCriteria(Admin.class).add(Restrictions.eq("username",admin.getUsername()));
        Admin temp = (Admin) cri.uniqueResult();
        return Objects.isNull(temp)?false:Objects.equals(temp.getPwd(),admin.getPwd());
    }
}
