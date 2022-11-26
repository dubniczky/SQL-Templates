-- Copy table structure without the rows

DROP TABLE new_table;

CREATE TABLE new_table
AS
    SELECT *
    FROM old_table
    WHERE 0=1;

SELECT *
FROM new_table;
