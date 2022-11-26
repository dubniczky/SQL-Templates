/*
Determine if a number is prime or not

Example:
    SELECT prim(26388279066623) from dual;
*/

CREATE OR REPLACE FUNCTION prime(n integer) RETURN integer IS
begin
    if n < 2 then
        return 0;
    end if;        
    for i in 2..sqrt(n) loop
        if mod(n, i) = 0 then
            return 0;
        end if;
    end loop;
    return 1;
end;
