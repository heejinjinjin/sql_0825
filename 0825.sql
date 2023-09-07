-- 도서정보 Book 테이블
CREATE TABLE Book(
    BOOKID NUMBER(2) PRIMARY KEY,
    BOOKNAME VARCHAR2(40),
    PUBLISHER VARCHAR2(40),
    PRICE NUMBER(8)
);
-- 수입도서 ImportedBook 테이블
CREATE TABLE ImportedBook(
    BOOKID NUMBER(2),
    BOOKNAME VARCHAR2(40),
    PUBLISHER VARCHAR2(40),
    PRICE NUMBER(8)
);

-- 고객정보 Customer 테이블
CREATE TABLE Customer(
    CUSTID NUMBER(2) PRIMARY KEY,
    NAME VARCHAR2(40),
    ADDRESS VARCHAR2(50),
    PHONE VARCHAR2(20)
);

-- 주문정보 Orders 테이블
CREATE TABLE Orders(
    ORDERID NUMBER(2) PRIMARY KEY,
    CUSTID NUMBER(2) REFERENCES Customer(CUSTID),
    BOOKID NUMBER(2) REFERENCES Book(BOOKID),
    SALEPRICE NUMBER(8),
    ORDERDATE DATE
);

-- Book 테이블에 10권의 도서 정보를 추가
INSERT INTO Book VALUES(1, '축구의 역사', '굿 스포츠', 7000);
INSERT INTO Book VALUES(2, '해리포터 죽음의 성물', '좋은책', 18000);
INSERT INTO Book VALUES(3, '해리포터와 마법사의 돌', '좋은책', 18000);
INSERT INTO Book VALUES(4, '해리포터 비밀의 방', '좋은책', 18000);
INSERT INTO Book VALUES(5, '해리포터 아즈카반의 죄수', '좋은책', 18000);
INSERT INTO Book VALUES(6, '해리포터 불의 잔', '좋은책', 18000);
INSERT INTO Book VALUES(7, '해리포터 불사조 기사단', '좋은책', 18000);
INSERT INTO Book VALUES(8, '해리포터 혼혈왕자', '좋은책', 18000);
INSERT INTO Book VALUES(9, '해리포터 저주받은 아이', '좋은책', 18000);
INSERT INTO Book VALUES(10, '나니아 연대기', '시공주니어', 38000);

-- Customer 테이블에 고객정보 추가
INSERT INTO customer VALUES(1, '박지성', '영국 멘체스터','010-5000-001');
INSERT INTO customer VALUES(2, '김연아', '서울 동작구 흑석동','010-3000-001');
INSERT INTO customer VALUES(3, '장미란', '서울 용산구 보광동','010-7000-001');
INSERT INTO customer VALUES(4, '추신수', '인천광역시 연수구','010-4000-001');
INSERT INTO customer VALUES(5, '박세리', '대전광역시 유성구','010-6000-001');