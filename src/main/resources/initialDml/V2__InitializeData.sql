-- -----------------------------------------------------
-- Data `ACCOUNT`
-- -----------------------------------------------------
INSERT INTO ACCOUNT (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ADDRESS1, ZIP, CREATED_AT, UPDATED_AT, LATEST_LOGIN_AT, ROLE)
VALUES ('호랑이', 'tiger','tiger@korea.com', 'lion', '주소1', '12345', NOW(), NOW(), NULL, 'ROLE_ADMIN');
INSERT INTO ACCOUNT (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ADDRESS1, ZIP, CREATED_AT, UPDATED_AT, LATEST_LOGIN_AT, ROLE)
VALUES ('홍길동', 'honggil', 'honggil@korea.com', 'father', '주소2', '12345', NOW(), NOW(), NULL, 'ROLE_USER');
INSERT INTO ACCOUNT (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ADDRESS1, ZIP, CREATED_AT, UPDATED_AT, LATEST_LOGIN_AT, ROLE)
VALUES ('강감찬', 'gamchan', 'gamchan@korea.com', 'river','주소3', '12345', NOW(), NOW(), NULL, 'ROLE_USER');
INSERT INTO ACCOUNT (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ADDRESS1, ZIP, CREATED_AT, UPDATED_AT, LATEST_LOGIN_AT, ROLE)
VALUES ('이순신', 'lee', 'general@korea.com', 'winner', '주소4', '12345', NOW(), NOW(), NULL, 'ROLE_USER');
INSERT INTO ACCOUNT (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ADDRESS1, ZIP, CREATED_AT, UPDATED_AT, LATEST_LOGIN_AT, ROLE)
VALUES ('태백산', 'mtb', 'mountain@korea.com', 'high', '주소5', '12345', NOW(), NOW(), NULL, 'ROLE_USER');
-- -----------------------------------------------------
-- Data `PRODUCT`
-- -----------------------------------------------------
INSERT INTO PRODUCT (PRODUCT_NAME, ADDRESS, DETAIL_ADDRESS, PRICE, CREATED_AT, UPDATED_AT)
VALUES ('서울 스튜디오', '서울시 강남구', '서울 스튜디오 503호', '300000', NOW(), NOW());
INSERT INTO PRODUCT (PRODUCT_NAME, ADDRESS, DETAIL_ADDRESS, PRICE, CREATED_AT, UPDATED_AT)
VALUES ('인천 스튜디오', '인천시 연수구', '인천 스튜디오 1205호', '150000', NOW(), NOW());
INSERT INTO PRODUCT (PRODUCT_NAME, ADDRESS, DETAIL_ADDRESS, PRICE, CREATED_AT, UPDATED_AT)
VALUES ('부천 스튜디오', '부천시 중구', '부천 스튜디오 801호', '180000', NOW(), NOW());
INSERT INTO PRODUCT (PRODUCT_NAME, ADDRESS, DETAIL_ADDRESS, PRICE, CREATED_AT, UPDATED_AT)
VALUES ('수원 스튜디오', '수원시 팔달구', '수원 스튜디오 209호', '120000', NOW(), NOW());
-- -----------------------------------------------------
-- Data `ACCOUNT_ROLE`
-- -----------------------------------------------------
--INSERT INTO USER_ROLE (ROLE_ID, USER_ID, ROLE, AUTHORIZED_AT)
--VALUES ('1', '1', 'ADMINISTRATOR', NOW());
--INSERT INTO USER_ROLE (ROLE_ID, USER_ID, ROLE, AUTHORIZED_AT)
--VALUES ('2', '2', 'MANAGER', NOW());
--INSERT INTO USER_ROLE (ROLE_ID, USER_ID, ROLE, AUTHORIZED_AT)
--VALUES ('3', '3', 'USER', NOW());
--INSERT INTO USER_ROLE (ROLE_ID, USER_ID, ROLE, AUTHORIZED_AT)
--VALUES ('4', '4', 'USER', NOW());
--INSERT INTO USER_ROLE (ROLE_ID, USER_ID, ROLE, AUTHORIZED_AT)
--VALUES ('5', '5', 'USER', NOW());
--INSERT INTO USER_ROLE (ROLE_ID, USER_ID, ROLE, AUTHORIZED_AT)
--VALUES ('6', '1', 'USER', NOW());
-- -----------------------------------------------------
-- Data `RESERVE`
-- -----------------------------------------------------
INSERT INTO RESERVE(PRODUCT_ID, ACCOUNT_ID, RESERVE_FROM, RESERVE_TO, CREATED_AT, UPDATED_AT)
VALUES ('1', '2', NOW(), NOW(), NOW(), null);
INSERT INTO RESERVE(PRODUCT_ID, ACCOUNT_ID, RESERVE_FROM, RESERVE_TO, CREATED_AT, UPDATED_AT)
VALUES ('2', '3', NOW(), NOW(), NOW(), null);
INSERT INTO RESERVE(PRODUCT_ID, ACCOUNT_ID, RESERVE_FROM, RESERVE_TO, CREATED_AT, UPDATED_AT)
VALUES ('3', '4', NOW(), NOW(), NOW(), null);
INSERT INTO RESERVE(PRODUCT_ID, ACCOUNT_ID, RESERVE_FROM, RESERVE_TO, CREATED_AT, UPDATED_AT)
VALUES ('4', '2', NOW(), NOW(), NOW(), null);