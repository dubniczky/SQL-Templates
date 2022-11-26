/*
Select a column of each row where another column appers two or more times with the first column
*/

SELECT DISTINCT t1.name
FROM tablename t1, tablename t2
WHERE t1.name = t2.name AND t1.value <> t2.value
