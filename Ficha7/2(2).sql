SELECT Title,Name
FROM MOVIE
JOIN MOVIE_ACTOR
JOIN ACTOR
ON(MOVIE.MovieId = MOVIE_ACTOR.MovieId AND MOVIE_ACTOR.ActorId = ACTOR.ActorId)
WHERE Title LIKE '%Superman%';