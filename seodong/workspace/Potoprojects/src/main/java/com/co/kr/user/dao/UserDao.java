package com.co.kr.user.dao;

import org.springframework.stereotype.Repository;

import com.co.kr.common.dao.AbstractDAO;
import com.co.kr.user.vo.UserVo;

@Repository
public class UserDao extends AbstractDAO {

	private final String USER_SQL = "userSql."; /*userSql 네임스페이스 임*/
	
	public void userCreateSuccess(UserVo uservo){
		insert(USER_SQL + "UserSuccess", uservo);
	}

	public UserVo createIdCheck(UserVo userVo) {
		// TODO Auto-generated method stub
		return (UserVo) selectOne(USER_SQL + "createIdCheck" , userVo);
	}
	
	public UserVo createEmailCheck(UserVo userVo) {
		// TODO Auto-generated method stub
		return (UserVo) selectOne(USER_SQL + "createEmailCheck" , userVo);
	}
	
	


	
}
