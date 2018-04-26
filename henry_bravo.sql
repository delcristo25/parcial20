--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FIBSONACCI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FIBSONACCI" (NC in NUMBER)
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
--------------------------------------------------------
--  DDL for Function SIMPLEFUNCTION
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SIMPLEFUNCTION" (a IN NUMBER, b IN NUMBER,c IN NUMBER)
  RETURN VARCHAR IS 
  
  Z VARCHAR(255):='';
BEGIN
    IF   b >= c THEN
    
    Z:=(to_char(a) || '/' || 	to_char(a*b) || '/' || 'Andrés');
  ELSE
    Z:=(to_char(a) || '/' || 	to_char(a*b) || '/' || 'martinez');
  END IF;
  RETURN Z;
END;
--------------------------------------------------------
--  DDL for Procedure FUNCTION_2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE FUNCTION "FUNCTION_2" (N IN number) 
  RETURN NUMBER IS 

	
	BEGIN
    
RETURN (2 * Fibsonacci(N + 1) - 1);
	
	
	
	END;

