/* Formatted on 18.08.2022 23:15:24 (QP5 v5.277) */
--CURSORS

DECLARE
   v_id   dparty_dbt%ROWTYPE;

   CURSOR c1
   IS
      (SELECT *
         FROM dparty_dbt
        WHERE t_partyid < 10);
BEGIN
   OPEN c1;

   LOOP
      FETCH c1 INTO v_id;

      EXIT WHEN c1%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE (v_id.t_partyid);
   END LOOP;

   CLOSE c1;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END;

DECLARE
BEGIN
   FOR r IN (SELECT *
               FROM dparty_dbt
              WHERE t_partyid < 10)
   LOOP
      DBMS_OUTPUT.PUT_LINE (r.t_partyid);
   END LOOP;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END;


--курсор с параметром

DECLARE
   v_id   dparty_dbt%ROWTYPE;

   CURSOR c1 (p_val NUMBER)
   IS
      (SELECT *
         FROM dparty_dbt
        WHERE t_partyid < p_val);
BEGIN
   OPEN c1 (5);

   LOOP
      FETCH c1 INTO v_id;

      EXIT WHEN c1%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE (v_id.t_partyid);
   END LOOP;

   CLOSE c1;

END;