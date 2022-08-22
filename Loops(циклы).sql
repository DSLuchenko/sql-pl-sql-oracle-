/* Formatted on 18.08.2022 18:21:03 (QP5 v5.277) */
DECLARE
   --объявление переменных(необязательно)
   dummy   NUMBER;
BEGIN
   --исполняемые операторы

   SELECT COUNT (*) INTO dummy FROM DUAL;
EXCEPTION
   --обработка исключений(необязательно)

   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END;

BEGIN
   DBMS_OUTPUT.put_line ('блок 1');

   BEGIN
      DBMS_OUTPUT.put_line ('блок 2');
   END;
END;


--ЦИКЛЫ

--LOOP

DECLARE
   v_i   NUMBER;
BEGIN
   v_i := 0;

   LOOP
      DBMS_OUTPUT.put_line ('v_i= ' || v_i);
      v_i := v_i + 2;
      EXIT WHEN v_i = 10;
   END LOOP;

   DBMS_OUTPUT.put_line ('end loop');
END;

DECLARE
   v_i   NUMBER;
BEGIN
   v_i := 0;

   LOOP
      DBMS_OUTPUT.put_line ('v_i= ' || v_i);
      v_i := v_i + 2;

      IF v_i = 10
      THEN
         EXIT;
      END IF;
   END LOOP;

   DBMS_OUTPUT.put_line ('end loop');
END;



--FOR LOOP

BEGIN
   FOR I IN 1 .. 10                                              -- IN REVERSE
   LOOP
      DBMS_OUTPUT.put_line (i);
   END LOOP;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END;

-- WHILE

DECLARE
   dummy   NUMBER;
BEGIN
   dummy := 0;

   WHILE dummy < 10
   LOOP
      dummy := dummy + 1;
      DBMS_OUTPUT.put_line (dummy);
   END LOOP;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END;

--CURSOR loop

DECLARE
   CURSOR curs_party
   IS
      (SELECT *
         FROM dparty_dbt
        WHERE t_partyid <= 10);
BEGIN
   FOR c1_rec IN curs_party
   LOOP
      DBMS_OUTPUT.put_line ('name: ' || c1_rec.t_name || ', id: ' || c1_rec.t_partyid);
   END LOOP;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END;