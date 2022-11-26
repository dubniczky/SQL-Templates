/*
Count the rows in the given table matching the given value

Params:
    $1: table name
    $2: column name
    $3: value to match
*/

SELECT COUNT(*) AS count
FROM ?
WHERE ? = ?
