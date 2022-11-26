/*
Calculate the fibonacci of a given integer

Example:
    execute fib(10);
*/

CREATE OR REPLACE FUNCTION fib(n integer) RETURN number IS
begin
    if n<=1 then
        return 0;
    elsif n=2 then
        return 1;
    else
        return fib(n-1)+fib(n-2);
    end if;
end;
