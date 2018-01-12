package com.cdsxt.dao.impl;

import com.cdsxt.dao.LoginDao;
import com.cdsxt.po.Admin;
import org.springframework.stereotype.Repository;

/**
 * @author jcx
 * @className LoginDaoImpl
 * @description TODO
 */
@Repository
public class LoginDaoImpl implements LoginDao{
    @Override
    public boolean valiUser(Admin admin) {
        return false;
    }
}
