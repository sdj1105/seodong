package com.co.kr.user.service;

import com.co.kr.user.vo.UserVo;

public interface UserService {
	
	public void userCreateSuccess(UserVo userVo);

	public UserVo createIdCheck(UserVo userVo);
	
	public UserVo createEmailCheck(UserVo userVo);
	
	
}
