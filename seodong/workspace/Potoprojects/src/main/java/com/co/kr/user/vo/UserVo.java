package com.co.kr.user.vo;

public class UserVo {

/*	CREATE TABLE USER_CREATE_TABLE (
		    REGIST_NO NUMBER, 
		    INPUT_ID           VARCHAR2(40) NOT NULL ,
		    FIRST_PWD          VARCHAR(16) NOT NULL,
		    INPUT_NAME         VARCHAR(50),
		    INPUT_EMAIL        VARCHAR2(50) NOT NULL ,
		    PHONE_NUMBER       VARCHAR(20),
		    USER_ZIP_CODE      VARCHAR(10),
		    USER_FIRST_ADDR    VARCHAR(200),
		    USER_SECOND_ADDR   VARCHAR(200),
		    REG_DE             VARCHAR2(20),
		    CONSTRAINT PK_USER_CREATE PRIMARY KEY(INPUT_ID, INPUT_EMAIL)
		);*/
	
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
		return "UserVo [inputId=" + inputId + ", inputName=" + inputName + ", firstPwd=" + firstPwd + ", inputEmail="
				+ inputEmail + ", phoneNumber=" + phoneNumber + ", userZipCode=" + userZipCode + ", userFirstAddr="
				+ userFirstAddr + ", userSecondAddr=" + userSecondAddr + ", regDe=" + regDe + "]";
	}
	
	
	
	
}
