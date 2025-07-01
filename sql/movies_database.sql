Tables:

Movies -
Movie_title
Year
Primary Key(Movie_id)
Director_id(Foreign Key to Directors.Director_id)

Actors -
Primary Key(Actor_id)
Actor_name

Directors - 
Primary Key(Director_id)
Director_name

Movie_Actor -
Movie_id(Foreign Key to Movies.Movie_id)
Actor_id(Foreign Key to Actors.Actor_id)
Primary Key(Movie_id, Actor_id)

Foreign Keys:

Movies(Director_id) refers Directors(Director_id)
Movie_Actor(Movie_id) refers Movies(Movie_id)
Movie_Actor(Actor_id) refers Actors(Actor_id)


Cardinality of Relations:
Between Movies and Directors -> m:1 (Mandatory 1 director for each movie)
Between Movies and Actors -> m:m (Mandatory 1 actor for each movie)


