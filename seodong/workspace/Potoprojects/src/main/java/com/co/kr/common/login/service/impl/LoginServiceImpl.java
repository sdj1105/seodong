package com.co.kr.common.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.co.kr.common.login.dao.LoginDao;
import com.co.kr.common.login.service.LoginService;
import com.co.kr.common.login.vo.LoginVo;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;
	
	
	@Override
	public LoginVo selectUserLogin(LoginVo loginVo) {
		return loginDao.selectUserLoginCheck(loginVo);
	}
	
}
