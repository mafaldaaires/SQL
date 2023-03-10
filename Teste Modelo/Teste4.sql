SELECT Title, StreamDate, Charge
FROM MOVIE
JOIN STREAM ON (MOVIE.MovieId = STREAM.MovieId)
JOIN MOVIE_GENRE ON (MOVIE.MovieId = MOVIE_GENRE.MovieId)
NATURAL JOIN GENRE 
WHERE YEAR(StreamDate) = 2017 AND MONTH(StreamDate) = 12 AND Label ='Thriller'
ORDER BY Title ASC, StreamDate DESC;