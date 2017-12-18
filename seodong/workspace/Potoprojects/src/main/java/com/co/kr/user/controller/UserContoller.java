package com.co.kr.user.controller;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.co.kr.common.util.Sha256Util;
import com.co.kr.user.service.UserService;
import com.co.kr.user.vo.UserVo;

@Controller
public class UserContoller {
	/* @Controller 컨트롤러로 사용하겠다고 명시하는거임 */

	private Log log = LogFactory.getLog(UserContoller.class);

	@Autowired
	UserService userService;
	/* @Autowired가 없으면 매번 객체를 생성해야함  */

	@RequestMapping(value="/userCreateSuccess.do")
	public void UserCreateSuccess(@ModelAttribute("userVo") UserVo userVo, Model model, HttpServletResponse response) throws Exception {
		/*  윗줄에 대한 설명
		 * 	key, 변수를 사용한다는거임 */
		/* model은 데이터 데이터를 항상 갖고 다님 */
		/* @RequestMapping 맵핑을 시킨다는거임 */
		/* @RequestMapping(value="/userCreateSuccess.do")은 상위 class에서도 사용가능 그럼 상위 맵핑을 무조건 타게됨 */
		/* @RequestMapping("/userCreateSuccess.do") value는 생략가능 */
		/* method=requestmethod.post, method=requestmethod.GET 2가지가 있음, 2가지를 동시에 사용도 가능 */

		/* 암호화 시작 s -> 성공한 암호화(1 첫번째 방법)  */
/*		String encryptPassWord = "";
		encryptPassWord = (String)Sha256Util.encrypt(userVo.getFirstPwd());
		userVo.setFirstPwd(encryptPassWord); // 암호화 저장
*/		/* 암호화 시작 e */

		/* 암호화 시작 s -> 성공한 암호화(2 두번째 방법)  */
		String hashPassword = BCrypt.hashpw(userVo.getFirstPwd(), BCrypt.gensalt());
		userVo.setFirstPwd(hashPassword);


		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + userVo.getInputId());
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + userVo.toString());

		userService.userCreateSuccess(userVo);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('정상적으로 회원가입이 되었습니다 \\n 로그인페이지로 이동합니다');  location.href='login.do'</script>");

/*		userService.userCreateSuccess(userVo);
		return "cmm/login/singup";*/
	}

	@RequestMapping(value="/createIdCheck.do", method=RequestMethod.POST)
	@ResponseBody
	public String CreateIdCheck(@ModelAttribute("userVo") UserVo userVo){
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + userVo.getInputId());
		UserVo CheckUserVo = userService.createIdCheck(userVo);

		if (CheckUserVo == null) { return "ok";

		} else {
			return "fail";
		}
	}


	@RequestMapping(value="/createEmailCheck.do", method=RequestMethod.POST)
	@ResponseBody
	public String createEmailCheck(@ModelAttribute("userVo") UserVo userVo){
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + userVo.getInputEmail());
		UserVo CheckUserVo = userService.createEmailCheck(userVo);

		if (CheckUserVo == null) { return "ok";

		} else {
			return "fail";
		}
	}

	@RequestMapping(value="/createIdAndEmailCheck.do", method=RequestMethod.POST)
	@ResponseBody
	public String createIdAndEmailCheck(@ModelAttribute("userVo") UserVo userVo){
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + userVo.getInputId());
		UserVo CheckUserVo = userService.createIdCheck(userVo);

		if (CheckUserVo == null) { return "ok";

		} else {
			return "fail";
		}
	}




}
