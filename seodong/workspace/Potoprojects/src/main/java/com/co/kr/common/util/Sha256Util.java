package com.co.kr.common.util;

import java.security.MessageDigest;

import org.springframework.stereotype.Component;

@Component
public class Sha256Util {
    public static String encrypt(String planText) {
    	
    	/* 패스워드 암호화 */
    	/* 예외사항 처리 s */
        try{
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(planText.getBytes());
            byte byteData[] = md.digest();

            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }

            StringBuffer hexString = new StringBuffer();
            for (int i=0;i<byteData.length;i++) {
                String hex=Integer.toHexString(0xff & byteData[i]);
                if(hex.length()==1){
                    hexString.append('0');
                }
                hexString.append(hex);
            }

            return hexString.toString();
        }catch(Exception e){
           System.err.println("encrypt err message>>>>>>>" + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException();
        }
    }
}