# Pokémon Data Analysis

## Project overview
This beginner data analysis project explores a small Pokémon dataset using Python (Pandas) and SQL (MySQL). It examines Pokémon attributes including HP, Attack, Defense, Speed, and Type.

**Project type:** Personal project  
**Dataset size:** 10 Pokémon records  
**Tools:** Python, Pandas, MySQL, SQL

## Objectives
- Explore and inspect the Pokémon dataset.
- Identify the Pokémon with the highest Attack, HP, and Speed.
- Calculate average HP by Pokémon type.
- Count Pokémon in each type.
- Compare the average Attack and Defense values across types.

## Repository structure
```text
Pokemon-Data-Analysis/
├── data/
│   └── pokemon.csv
├── results/
│   └── type_summary.csv
├── SQL_Analysis.sql
├── pokemon_analysis.py
└── README.md
```

## Dataset
The dataset is included in `data/pokemon.csv` and contains these columns:
- `Name`: Pokémon name
- `Type`: Pokémon type
- `HP`: Hit points
- `Attack`: Attack statistic
- `Defense`: Defense statistic
- `Speed`: Speed statistic

## Run the Python analysis
1. Install Python 3.
2. Install Pandas:
   ```bash
   pip install pandas
   ```
3. Run the script from the project root:
   ```bash
   python pokemon_analysis.py
   ```
The script prints summary results and creates `results/type_summary.csv`.

## Run the SQL analysis in MySQL
1. Create a database:
   ```sql
   CREATE DATABASE pokemon_analysis;
   USE pokemon_analysis;
   ```
2. Create the table and load the CSV into the table using MySQL Workbench's Table Data Import Wizard (or your preferred CSV import method).
3. Open and execute `SQL_Analysis.sql`.

The SQL file includes queries for highest Attack, average HP by type, Pokémon count by type, and other basic comparisons.

## Key findings from this dataset
- Dragonite has the highest Attack (134).
- Snorlax has the highest HP (160).
- Mewtwo has the highest Speed (130).
- Fire and Water each have 2 Pokémon; every other type has 1 Pokémon.

These findings describe only the 10 records in this sample dataset, not the complete Pokémon universe.

## Author
Personal learning project.
