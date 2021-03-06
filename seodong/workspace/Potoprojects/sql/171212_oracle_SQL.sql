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

SELECT * FROM USER_CREATE_TABLE_SEQUENCES;

CREATE SEQUENCE USER_CREATE_SEQ
START WITH 1
INCREMENT BY 1;

    
    CREATE TABLE USER_CREATE_TABLE (
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
		);



CREATE TABLE FREE_BOARD (
    FREE_BOR_IDX NUMBER NOT NULL PRIMARY KEY,
    FREE_BOR_TITLE VARCHAR2(100) NOT NULL,
    USER_NM VARCHAR2(50),
    USER_ID VARCHAR2(50),
    FREE_BOR_CONTENTS VARCHAR2(1000),
    FREE_BOR_VIEW_CNT NUMBER DEFAULT 0,
    REG_DE VARCHAR2(20),
    UPDATE_ID VARCHAR2(50),
    UPDATE_DE VARCHAR2(20),
    DEL_DE VARCHAR2(20),
    DEL_ID VARCHAR2(50),
    USE_YN VARCHAR2(1) DEFAULT 'Y'
);

CREATE SEQUENCE FREE_BOARD_SEQ
START WITH 1
INCREMENT BY 1;


DECLARE
  i NUMBER := 1;
BEGIN
  while i <= 1000 loop
    insert into FREE_BOARD (
      FREE_BOR_IDX,
      FREE_BOR_TITLE,
      USER_NM,
      USER_ID,
      FREE_BOR_CONTENTS,
      FREE_BOR_VIEW_CNT,
      REG_DE,
      UPDATE_ID,
      UPDATE_DE,
      DEL_DE,
      DEL_ID,
      USE_YN
    ) values (
      (SELECT NVL(MAX(FREE_BOR_IDX)+1, 1) FROM FREE_BOARD),
      '제목' || i, 
      '작성자' || i,
      '아이디' || i,
      '내용' || i,
      0,
      '20181209',
      '',
      '',
      '',
      '',
      'Y'
    );
  i := i+1;
end loop;
END;

SELECT * FROM FREE_BOARD;

SELECT * FROM USER_CREATE_TABLE;

commit;
