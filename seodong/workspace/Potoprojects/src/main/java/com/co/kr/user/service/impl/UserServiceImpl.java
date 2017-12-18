package com.co.kr.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.co.kr.user.dao.UserDao;
import com.co.kr.user.service.UserService;
import com.co.kr.user.vo.UserVo;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	public void userCreateSuccess(UserVo userVo){
		userDao.userCreateSuccess(userVo);
	}

	@Override
	public UserVo createIdCheck(UserVo userVo) {
		// TODO Auto-generated method stub
		return userDao.createIdCheck(userVo);
	}

	@Override
	public UserVo createEmailCheck(UserVo userVo) {
		// TODO Auto-generated method stub
		return userDao.createEmailCheck(userVo);
	}
	
	
	
	
	
}
