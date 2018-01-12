package com.cdsxt.service.impl;

import com.cdsxt.dao.LoginDao;
import com.cdsxt.po.Admin;
import com.cdsxt.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author jcx
 * @className LoginService
 * @description TODO
 */
@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    LoginDao loginDao;

    @Override
    public boolean valiUser(Admin admin) {
        return this.loginDao.valiUser(admin);
    }
}
