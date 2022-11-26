/*
Calculate how many times a given string appears in another string

Example:
    SELECT substrings('ab c ab ab de ab fg', 'ab') FROM dual;
*/

CREATE OR REPLACE FUNCTION substrings(p1 varchar, p2 varchar) RETURN integer IS
    db INT := 0;
begin
    for i IN 1..LENGTH(p1)-LENGTH(p2)+1 loop
        if SUBSTR(p1,i,LENGTH(p2)) = p2 then
            db := db+1;
        end if;
    end loop;
    return db;
end;
