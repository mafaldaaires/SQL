SELECT DISTINCT MOVIE.Title, REGION.Name, COUNT(STREAM.StreamDate)
FROM (MOVIE, REGION) LEFT OUTER JOIN (STREAM NATURAL JOIN CUSTOMER JOIN COUNTRY)
ON (MOVIE.MovieId = STREAM.MovieId AND COUNTRY.RegionId = REGION.RegionId AND CUSTOMER.Country = COUNTRY.Name)
WHERE MOVIE.Title LIKE '%war%'
GROUP BY MOVIE.Title, REGION.Name   
ORDER BY MOVIE.Title ASC, REGION.Name ASC;