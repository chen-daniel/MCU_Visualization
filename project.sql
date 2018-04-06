DROP DATABASE IF EXISTS chenshinvu;

USE chenshinvu;

CREATE TABLE movie (
movie_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
director VARCHAR(255),
description VARCHAR(255),
release_date DATE,
cost INT CHECK(cost > 0),
revenue INT CHECK(cost > 0)
);

CREATE TABLE region (
region_name VARCHAR(255) PRIMARY KEY,
population INT CHECK(population > 0)
);

CREATE TABLE a_event (
event_id INT AUTO_INCREMENT PRIMARY KEY,
movie_appear INT NOT NULL REFERENCES movie(movie_id),
description VARCHAR(255), -- name of the event
location VARCHAR(255) REFERENCES region(region_name),
impact INT -- number of dead people
);

-- https://github.com/pybites/marvel_challenge/blob/master/marvel-wikia-data.csv
-- https://data.world/fivethirtyeight/comic-characters
-- https://github.com/fivethirtyeight/data/tree/master/avengers
CREATE TABLE characters (
alias VARCHAR(255) PRIMARY KEY, -- ie Deadpool
real_full_name VARCHAR(255),
wiki_profile VARCHAR(255) ,-- a url
gender VARCHAR(255),
personality VARCHAR(255),
power VARCHAR(255),
head_org VARCHAR(255) REFERENCES organization(org_name),
species VARCHAR(255),
class VARCHAR(255) -- good/bad/neutral
);