CREATE TABLESPACE mid_term
DATAFILE 'henry.DBF' SIZE 20MB
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO
ONLINE;


--2. Profile Creation

CREATE PROFILE exam   
LIMIT SESSIONS_PER_USER  2
CPU_PER_SESSION  1
iDLE_TIME  10 
FAILED_LOGIN_ATTEMPTS  2
PASSWORD_LIFE_TIME  30;



--3. User Creation

CREATE USER ejercicios
IDENTIFIED BY c1234
DEFAULT TABLESPACE mid_term
QUOTA UNLIMITED ON mid_term
PROFILE exam;

GRANT connect TO ejercicios;


CREATE OR REPLACE FUNCTION SimpleFunction(a IN NUMBER, b IN NUMBER,c IN NUMBER)
  RETURN VARCHAR IS 
  
  Z VARCHAR(255):='';
BEGIN
    IF   b >= c THEN
    
    Z:=(to_char(a) || '/' || 	to_char(a*b) || '/' || 'Andr�s');
  ELSE
    Z:=(to_char(a) || '/' || 	to_char(a*b) || '/' || 'martinez');
  END IF;
  RETURN Z;
END;


SELECT SimpleFunction(1,2,3) as RESULTADO FROM DUAL;-- 1/2/martinez
SELECT SimpleFunction(3,2,1) as RESULTADO FROM DUAL;--RESUL:3/6/Andr�s

    
    



   CREATE OR REPLACE FUNCTION  Fibsonacci(NC in NUMBER)
     RETURN NUMBER IS 


    first number:=0;
    second number:=1;
    third number;
    n number:=NC;
    i number;
 
begin
  
 
    for i in 2..n
    loop
        third:=first+second;
        first:=second;
        second:=third;
         
    end loop;
   return third;
end;
    
    
    
SELECT Fibsonacci(7) as RESULTADO FROM DUAL;
    
    
CREATE OR REPLACE PROCEDURE  function_2(N IN number) AS

	
	BEGIN
    
dbms_output.put_line('El resultado es : '|| (2 * Fibsonacci(N + 1) - 1));
	
	
	
	END;


EXEC function_2(3);

