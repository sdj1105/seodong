SELECT * FROM USER_CREATE_TABLE;

--1 테이블 만들고,
--2 시퀀스 만들고,
--3 프로시저 만들고

-- 1 테이블 만들고
CREATE TABLE FREE_FILE_BOARD(
    FREE_BOR_IDX NUMBER NOT NULL PRIMARY KEY,
    FREE_BOR_TITLE VARCHAR2(100) NOT NULL,
    USER_NM VARCHAR2(50),
    USER_ID VARCHAR2(50),
    FREE_BOR_CONTENTS VARCHAR2(1000),
    FREE_BOR_VIEW_CNT VARCHAR2(50),
    REG_DE DATE(50),
    UPDATE_ID VARCHAR2(50),
    UPDATE_DE DATE(50),
    DEL_DE DATE(50),
    DEL_ID VARCHAR2(20),
    DEL_YN DATE(50)
)

-- 2 시퀀스 만들고
첫번째 index가 0이라서 +1을 증가시키기 위해서
-- 시퀀스는 증가만 잇슴
-- 1부터 증가시키게 만들었슴


-- 3 프로시저 만들고

DECLARE
  i NUMBER ;= 1;
  BEGIN
    while i <= 1000 loop
        INSERT INTO FREE_BOARD{
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
            DEL_YN
        }dsaas{
            E1221[];,
            E1221[];,
            E1221[];,
        };
        
-- 현우씨 1 테이블 생성

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

-- 현우씨 2 시퀀스 생성: 첫번째 index가 0이라서 +1을 증가시키기 위해서
-- 시퀀스는 증가만 잇슴
-- 1부터 증가시키게 만들었슴


CREATE SEQUENCE FREE_BOARD_SEQ
START WITH 1
INCREMENT BY 1;



-- 태현씨 3 프로시저 생성


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

-- 100부터 증가시키게 만들었슴
CREATE SEQUENCE FREE_BOARD_SEQ
START WITH 100
INCREMENT BY 1;

-- 시퀀스 조회
select * from user_sequences;

-- 시퀀스 삭제
drop sequence SEQ_FREE_BOARD;

-- 1001번부터 나오게
CREATE SEQUENCE FREE_BOARD_SEQ
START WITH 100
INCREMENT BY 1;

-- 3 프로시저 만들기

commit;

SELECT 
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
      FROM FREE_BOARD;
      
      
	  SELECT
	      FREE_BOR_IDX,
	      FREE_BOR_TITLE,
	      USER_NM,
	      USER_ID,
	      FREE_BOR_CONTENTS,
	      FREE_BOR_VIEW_CNT,
	      REG_DE,
	      USE_YN
	      FROM FREE_BOARD
	      WHERE FREE_BOR_IDX BETWEEN 1 AND 100;

commit;









