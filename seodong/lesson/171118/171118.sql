INSERT 
        INTO USER_CREATE_TABLE
    (
        REGIST_NO,
        INPUT_ID,
        FIRST_PWD,
        INPUT_NAME,
        INPUT_EMAIL,
        PHONE_NUMBER,
        USER_ZIP_CODE,
        USER_FIRST_ADDR,
        USER_SECOND_ADDR,
        REG_DE  
    )VALUES(
        USER_CREATE_SEQ.NEXTVAL,
        'admin',  
        '1234',
        '운영자',
        'DSADSA@NAVER.COM',
        '01023521451',
        '01548',
        '첫번째주소',
        '두번째주소',
        TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS')
);

SELECT * FROM USER_CREATE_TABLE;

commit;




