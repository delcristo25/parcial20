CREATE OR REPLACE FUNCTION SimpleFunction(a IN NUMBER, b IN NUMBER,c IN NUMBER)
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


SELECT SimpleFunction(1,2,3) as RESULTADO FROM DUAL;-- 1/2/martinez
SELECT SimpleFunction(3,2,1) as RESULTADO FROM DUAL;--RESUL:3/6/Andrés

    
    



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

