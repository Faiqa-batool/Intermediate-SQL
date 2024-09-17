-- Use SUM() to calculate the total gross for all films made in the year 2000 or later, and use the alias total_gross.
SELECT SUM(gross) AS total_gross
FROM films
WHERE relese_year >= 2000;

-- Calculate the average amount grossed by all films whose titles start with the letter 'A' and alias with avg_gross_A.
SELECT AVG(gross) AS avg_gross_A
FROM films
WHERE title LIKE 'A%';

-- Calculate the lowest gross film in 1994 and use the alias lowest_gross.
SELECT MIN(gross) AS lowest_gross
FROM films
WHERE release_year = 1994;

-- Calculate the highest gross film between 2000 and 2012, inclusive, and use the alias highest_gross.
SELECT MAX(gross) AS highest_gross 
FROM films
WHERE release_year BETWEEN 2000 and 2012;

-- Calculate the average facebook_likes to one decimal place and assign to the alias, avg_facebook_likes.
SELECT ROUND(AVG(facebook_likes), 1) AS avg_facebook_likes
FROM reviews;

-- Calculate the average budget from the films table, aliased as avg_budget_thousands, and round to the nearest thousand.
SELECT ROUND(AVG(budget), -3) AS avg_budget_thousands
FROM films;
