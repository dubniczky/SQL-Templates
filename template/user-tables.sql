/*
Table details owned by a given user

Params:
    $1: user name
*/

SELECT *
FROM dba_objects
WHERE owner = ?
