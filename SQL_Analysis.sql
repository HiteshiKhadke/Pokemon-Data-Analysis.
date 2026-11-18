-- Pokémon Data Analysis
-- Database: pokemon_analysis
-- Table: pokemon
-- Import data/pokemon.csv into the pokemon table before running these queries.

CREATE DATABASE IF NOT EXISTS pokemon_analysis;
USE pokemon_analysis;

-- Create the table (skip if you already created/imported it)
CREATE TABLE IF NOT EXISTS pokemon (
    Name VARCHAR(50),
    Type VARCHAR(30),
    HP INT,
    Attack INT,
    Defense INT,
    Speed INT
);

-- 1. View all Pokémon records
SELECT * FROM pokemon;

-- 2. Which Pokémon has the highest Attack?
SELECT Name, Attack
FROM pokemon
ORDER BY Attack DESC
LIMIT 1;

-- 3. Which Pokémon has the highest HP?
SELECT Name, HP
FROM pokemon
ORDER BY HP DESC
LIMIT 1;

-- 4. Which Pokémon has the highest Speed?
SELECT Name, Speed
FROM pokemon
ORDER BY Speed DESC
LIMIT 1;

-- 5. What is the average HP for each Pokémon type?
SELECT Type, AVG(HP) AS average_hp
FROM pokemon
GROUP BY Type
ORDER BY average_hp DESC;

-- 6. How many Pokémon belong to each type?
SELECT Type, COUNT(*) AS pokemon_count
FROM pokemon
GROUP BY Type
ORDER BY pokemon_count DESC, Type;

-- 7. What is the average Attack for each type?
SELECT Type, AVG(Attack) AS average_attack
FROM pokemon
GROUP BY Type
ORDER BY average_attack DESC;

-- 8. Compare average Attack and Defense by type
SELECT
    Type,
    AVG(Attack) AS average_attack,
    AVG(Defense) AS average_defense
FROM pokemon
GROUP BY Type
ORDER BY Type;

-- 9. Find Pokémon with HP greater than 100
SELECT Name, Type, HP
FROM pokemon
WHERE HP > 100
ORDER BY HP DESC;

-- 10. List Fire and Water type Pokémon
SELECT Name, Type, HP, Attack
FROM pokemon
WHERE Type IN ('Fire', 'Water')
ORDER BY Type, Name;
