/*
Calculate the greates common divisor of two numbers

Example:
    SELECT lnko(1,2), lnko(5,3), lnko(6,4), lnko(16,4), lnko(96,30) FROM dual;
*/

CREATE OR REPLACE FUNCTION gcd(p1 integer, p2 integer) RETURN number IS
    a integer := p1;
    b integer := p2;
    c integer := mod(a, b);
begin
    while (b != 0) loop
        a := b;
        b := c;
        c := mod(a, b);
    end loop;

    return a;
end;
