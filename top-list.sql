/*
Return top n items by number of occurences in the table

Params:
    $1: column name
    $2: table name
    $3: displayed row name (usually same as $1)
    $4: number of items to return
*/

SELECT ?, COUNT(*) AS count
FROM ?
GROUP BY ?
ORDER BY count DESC
LIMIT ?
