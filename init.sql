CREATE DATABASE movies;
USE movies;


CREATE TABLE movies_data (
  Title VARCHAR(50),
  Genre VARCHAR(50)
);


INSERT INTO movies_data
  (Title, Genre)
VALUES
  ('22 Bullets', 'Action'),
  ('Bad Blood', 'Action'),
  ('Iron Man', 'Action'),
  ('Flipped', 'Comedy'),
  ('The Hangover', 'Comedy'),
  ('The Dictator', 'Comedy'),
  ('The Godfather', 'Drama'),
  ('The Shawshank Redemption', 'Drama'),
  ('The Dark Knight', 'Drama');