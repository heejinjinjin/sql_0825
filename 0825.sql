-- �������� Book ���̺�
CREATE TABLE Book(
    BOOKID NUMBER(2) PRIMARY KEY,
    BOOKNAME VARCHAR2(40),
    PUBLISHER VARCHAR2(40),
    PRICE NUMBER(8)
);
-- ���Ե��� ImportedBook ���̺�
CREATE TABLE ImportedBook(
    BOOKID NUMBER(2),
    BOOKNAME VARCHAR2(40),
    PUBLISHER VARCHAR2(40),
    PRICE NUMBER(8)
);

-- ������ Customer ���̺�
CREATE TABLE Customer(
    CUSTID NUMBER(2) PRIMARY KEY,
    NAME VARCHAR2(40),
    ADDRESS VARCHAR2(50),
    PHONE VARCHAR2(20)
);

-- �ֹ����� Orders ���̺�
CREATE TABLE Orders(
    ORDERID NUMBER(2) PRIMARY KEY,
    CUSTID NUMBER(2) REFERENCES Customer(CUSTID),
    BOOKID NUMBER(2) REFERENCES Book(BOOKID),
    SALEPRICE NUMBER(8),
    ORDERDATE DATE
);

-- Book ���̺� 10���� ���� ������ �߰�
INSERT INTO Book VALUES(1, '�౸�� ����', '�� ������', 7000);
INSERT INTO Book VALUES(2, '�ظ����� ������ ����', '����å', 18000);
INSERT INTO Book VALUES(3, '�ظ����Ϳ� �������� ��', '����å', 18000);
INSERT INTO Book VALUES(4, '�ظ����� ����� ��', '����å', 18000);
INSERT INTO Book VALUES(5, '�ظ����� ����ī���� �˼�', '����å', 18000);
INSERT INTO Book VALUES(6, '�ظ����� ���� ��', '����å', 18000);
INSERT INTO Book VALUES(7, '�ظ����� �һ��� ����', '����å', 18000);
INSERT INTO Book VALUES(8, '�ظ����� ȥ������', '����å', 18000);
INSERT INTO Book VALUES(9, '�ظ����� ���ֹ��� ����', '����å', 18000);
INSERT INTO Book VALUES(10, '���Ͼ� �����', '�ð��ִϾ�', 38000);

-- Customer ���̺� ������ �߰�
INSERT INTO customer VALUES(1, '������', '���� ��ü����','010-5000-001');
INSERT INTO customer VALUES(2, '�迬��', '���� ���۱� �漮��','010-3000-001');
INSERT INTO customer VALUES(3, '��̶�', '���� ��걸 ������','010-7000-001');
INSERT INTO customer VALUES(4, '�߽ż�', '��õ������ ������','010-4000-001');
INSERT INTO customer VALUES(5, '�ڼ���', '���������� ������','010-6000-001');