/*
Get users who have more than n types of objects

Params:
    $1: type count
*/

SELECT owner
FROM dba_objects
GROUP BY owner
HAVING count( UNIQUE object_type ) > ?;
