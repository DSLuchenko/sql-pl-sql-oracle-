﻿/* Formatted on 18.08.2022 16:06:15 (QP5 v5.277) */
DROP TABLE SQL_TEST_CHR;

CREATE TABLE SQL_TEST_CHR
(
   T_ID     NUMBER,
   T_NAME   CHAR (10)
);

INSERT INTO SQL_TEST_CHR (T_ID, T_NAME)
     VALUES (1, 't');

ALTER TABLE SQL_TEST_CHR
   MODIFY T_NAME VARCHAR2 (10);

INSERT INTO SQL_TEST_CHR (T_ID, T_NAME)
     VALUES (2, 'oo');