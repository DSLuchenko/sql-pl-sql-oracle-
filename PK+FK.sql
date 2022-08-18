/* Formatted on 18/08/2022 13:55:03 (QP5 v5.277) */
--Пример PK и FK

DROP TABLE SQL_Party;
DROP TABLE SQL_Address;

CREATE TABLE SQL_Party
(
   t_id     NUMBER (2) CONSTRAINT t_id_pk PRIMARY KEY,
   t_name   VARCHAR2 (10) NOT NULL
);

/*
CREATE TABLE SQL_Party (
    t_id number(2),
    t_name varchar2(10) not null,
    
    constraint t_id_pk primary key(t_id)
);

ALTER TABLE SQL_Party
   ADD CONSTRAINT t_id_pk PRIMARY KEY (t_id);

*/

CREATE TABLE SQL_Address
(
   t_id        NUMBER (2) CONSTRAINT t_idAdd_pk PRIMARY KEY,
   t_adress    VARCHAR2 (20) NOT NULL,
   t_partyid   NUMBER (2) CONSTRAINT t_partyid_fk REFERENCES SQL_party (t_id)
);


/*
CREATE TABLE SQL_Address
(
   t_id        NUMBER (2) CONSTRAINT t_idAdd_pk PRIMARY KEY,
   t_adress    VARCHAR2 (20) NOT NULL,
   t_partyid   NUMBER (2),
   CONSTRAINT t_partyid_fk FOREIGN KEY (t_partyid)
       REFERENCES SQL_party (t_id)
);

ALTER TABLE SQL_Address
   DROP CONSTRAINT t_partyid_fk;
ALTER TABLE SQL_Address
ADD CONSTRAINT t_partyid_fk FOREIGN KEY (t_partyid)
       REFERENCES SQL_party (t_id)
        ON DELETE CASCADE;
*/



INSERT INTO SQL_Party p (t_id, t_name)
     VALUES (1, 'Дмитрий');

INSERT INTO SQL_Party p (t_id, t_name)
     VALUES ('Дмитрий');                             -- ошибка ключ null

INSERT INTO SQL_Party p (t_id, t_name)
     VALUES (1, 'Вова');                 -- ошибка уникальности ключа

INSERT INTO SQL_Address p (t_id, t_adress, t_partyid)
     VALUES (1, 'Брянск', 2);                         --ошибка нет ключа в таблице SQL_Party

INSERT INTO SQL_Address p (t_id, t_adress, t_partyid)
     VALUES (1, 'Брянск', 1);

DELETE SQL_Address
 WHERE t_id = 1;

DELETE SQL_Party
 WHERE t_id = 1;