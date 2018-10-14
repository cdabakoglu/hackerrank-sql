SELECT SUM(CITY.POPULATION)
FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT = 'Asia'

/*
Caner Dabakoğlu
GitHub: https://github.com/cdabakoglu
*/
