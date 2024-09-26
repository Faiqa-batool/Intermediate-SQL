-- Select the release_year and count of films released in each year aliased as film_count.
SELECT release_year, COUNT(title) AS film_count
FROM films
GROUP BY release_year;

-- Select the release_year and average duration aliased as avg_duration of all films, grouped by release_year.
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;

-- Select the release_year, country, and the maximum budget aliased as max_budget for each year and each country; sort your results by release_year and country.
SELECT 
    release_year,
    country,
    MAX(budget) AS max_budget,
    COUNT(title)
FROM films
GROUP BY release_year, country
ORDER BY release_year, country;

-- Which release_year had the most language diversity? from films data

SELECT release_year, COUNT(DISTINCT language) AS language_diversity
FROM films
GROUP BY release_year
ORDER BY language_diversity DESC
LIMIT 1;

