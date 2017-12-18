package com.co.kr.common.util;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

// 접속정보를 암호화 하기 위해서 만듬
public class Encryptor {
	public static void main(String[] args) {
		StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();

		// xml에 configurationEncryptor에 들어갈 패스워드
		encryptor.setPassword("jdbcPassWord");

		String oracleUrl       = encryptor.encrypt("jdbc:oracle:thin:@svncenter.xyz:1521:ORCL");
		String oracleUserName  = encryptor.encrypt("sdj1105");
		String oraclePassWord  = encryptor.encrypt("ssdj1105");

		System.out.println("");

		System.out.println("jdbc.oracleDriver=oracle.jdbc.driver.OracleDriver");
		System.out.println("jdbc.oracleUrl=ENC("+oracleUrl+")");
		System.out.println("jdbc.oracleUserName=ENC("+oracleUserName+")");
		System.out.println("jdbc.oraclePassWord=ENC("+oraclePassWord+")");


	}

}
