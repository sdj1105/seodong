package com.co.kr.common.log.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LogMarController extends HandlerInterceptorAdapter {
	
	private Log log = LogFactory.getLog(LogMarController.class);

	// 요청전 실행
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean result = true;
		
		System.out.println("스터디 인터셉터 시작......");
		
		return result;
	}	

    // 요청후 실행
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
		System.out.println("스터디 인터셉터 끝......");
	}


	
	

}
