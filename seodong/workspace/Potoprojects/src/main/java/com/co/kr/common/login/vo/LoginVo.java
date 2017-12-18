package com.co.kr.common.login.vo;

public class LoginVo {
	private String inputId;
	private String inputName;
	private String firstPwd;
	private String inputEmail;
	
	private String phoneNumber;
	private String userZipCode;
	private String userFirstAddr;
	
	private String userSecondAddr;
	private String regDe;
	
	
	public String getInputId() {
		return inputId;
	}
	public void setInputId(String inputId) {
		this.inputId = inputId;
	}
	public String getInputName() {
		return inputName;
	}
	public void setInputName(String inputName) {
		this.inputName = inputName;
	}
	public String getFirstPwd() {
		return firstPwd;
	}
	public void setFirstPwd(String firstPwd) {
		this.firstPwd = firstPwd;
	}
	public String getInputEmail() {
		return inputEmail;
	}
	public void setInputEmail(String inputEmail) {
		this.inputEmail = inputEmail;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getUserZipCode() {
		return userZipCode;
	}
	public void setUserZipCode(String userZipCode) {
		this.userZipCode = userZipCode;
	}
	public String getUserFirstAddr() {
		return userFirstAddr;
	}
	public void setUserFirstAddr(String userFirstAddr) {
		this.userFirstAddr = userFirstAddr;
	}
	public String getUserSecondAddr() {
		return userSecondAddr;
	}
	public void setUserSecondAddr(String userSecondAddr) {
		this.userSecondAddr = userSecondAddr;
	}
	public String getRegDe() {
		return regDe;
	}
	public void setRegDe(String regDe) {
		this.regDe = regDe;
	}
	@Override
	public String toString() {
		return "LoginVo [inputId=" + inputId + ", inputName=" + inputName + ", firstPwd=" + firstPwd + ", inputEmail="
				+ inputEmail + ", phoneNumber=" + phoneNumber + ", userZipCode=" + userZipCode + ", userFirstAddr="
				+ userFirstAddr + ", userSecondAddr=" + userSecondAddr + ", regDe=" + regDe + "]";
	}
	
	
	
	
}
