/* Formatted on 18.08.2022 14:33:53 (QP5 v5.277) */
--comparison operator

SELECT *
  FROM DPARTY_DBT P
 WHERE P.T_PARTYID IN (254, 33);

SELECT *
  FROM DPARTY_DBT P
 WHERE P.T_PARTYID BETWEEN 1 AND 10;

SELECT *
  FROM DPARTY_DBT P
 WHERE P.T_okpo IS NULL;


SELECT *
  FROM DPARTY_DBT P
 WHERE P.T_okpo IS NOT NULL;

--Chr(0)	NUL	Null char
--Chr(1)	SOH	Start of Heading

SELECT *
  FROM DPARTY_DBT P
 WHERE P.T_NAME LIKE '%т_ст%';        -- '_'-один символ '%'-несколько символов

SELECT *
  FROM DPARTY_DBT P
 WHERE EXISTS
          (SELECT *
             FROM DPARTY_DBT P
            WHERE T_partyid = 1);