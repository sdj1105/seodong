package com.co.kr.common.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.co.kr.common.login.service.LoginService;
import com.co.kr.common.login.service.impl.LoginServiceImpl;
import com.co.kr.common.login.vo.LoginVo;
import com.co.kr.common.util.Sha256Util;
import com.co.kr.user.controller.UserContoller;
import com.co.kr.user.vo.UserVo;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginservice;
	
	private Log log = LogFactory.getLog(LoginController.class);
	
	@RequestMapping(value={"/login", ""})
	public String login() { 
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		return "cmm/login/login";
	}
	
	@RequestMapping(value="/singup") 
	public String singup() {
		return "cmm/login/singup";
	}
	
	@RequestMapping(value="/mainPage")
	public String mainPage() { 
		return "cmm/login/mainPage";
	}
	
	@RequestMapping(value="/footer")
	public String footer() { 
		return "cmm/include/footer";
	}
	
	@RequestMapping(value="/ex02")
	public String ex02() { 
		return "ex01/ex02";
	}
	

	
	/*02번째 방법 */
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST) 
	   public String loginCheck(@ModelAttribute LoginVo loginVo,HttpServletRequest request){
	      System.out.println("7777777777777777777777");
	      //log.info("???????????????");
	      // name 값
		
	      String id = (request.getParameter("inputId") != null) ? request.getParameter("inputId") : "";
	      String password = (request.getParameter("firstPwd") != null) ? request.getParameter("firstPwd") : "";
	      
	      //String enc = "";
	      //enc = Sha256Util.encrypt(password);
	      
	      loginVo.setInputId(id);
	      //loginVo.setUserPass(enc); // == enc 대체 예정
	      
	      LoginVo chkLoginVo = new LoginVo();
	      chkLoginVo = loginservice.selectUserLogin(loginVo);
	     
	      if(chkLoginVo == null){
	         log.info("null point exception");
	         System.out.println("33333333333333333333333333");
	      }else{
	         if(!BCrypt.checkpw(password,chkLoginVo.getFirstPwd())){
	            log.info("fail");
	         }else{
	            log.info("success");
	            return "home.do"; // 맞으면 이동             
	         }
	      }
	      
//	      if(chkLoginVo == null){
//	         log.info("아이디 또는 패스워드가 다릅니다.");
//	      }else{
//	         log.info("성공");
//	      }
	      return "cmm/login/login"; // 틀리면 alert창 후 로그인으로
	      
	   }
	
	
}
