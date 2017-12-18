package com.co.kr.common.login.dao;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.co.kr.common.dao.AbstractDAO;
import com.co.kr.common.login.vo.LoginVo;

@Repository
public class LoginDao extends AbstractDAO {
	
	private final String LOGIN_SQL = "loginSQL.";

	public LoginVo selectUserLoginCheck(LoginVo loginVo){
		return (LoginVo) selectOne(LOGIN_SQL + "LoginCheck", loginVo);
	}
}
