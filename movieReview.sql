/**
	moview_reviews.sql
*/

DROP TABLE IF EXISTS movie_reviews;

CREATE TABLE movie_reviews
(
 reviewer varchar(60) NOT NULL,
 movie varchar(100) NOT NULL,
 rating int NOT NULL
);

SELECT * FROM movie_reviews;

LOAD DATA LOCAL INFILE '/Users/Apple1/Documents/movieReviews.csv'
INTO TABLE movie_reviews
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Reviewer, Movie, Rating);

SELECT * FROM movie_reviews;