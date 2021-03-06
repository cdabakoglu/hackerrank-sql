SELECT CAST(LAT_N AS NUMERIC(7,4))
FROM
    (
     SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS INDEXNO 
     FROM STATION 
     ) AS TABLE_LAT_N
WHERE INDEXNO = 
    ( 
    SELECT ROUND((COUNT(LAT_N) + 1) / 2, 0) 
    FROM STATION
    )
    
/*
Caner Dabakoğlu
GitHub: https://github.com/cdabakoglu
*/
