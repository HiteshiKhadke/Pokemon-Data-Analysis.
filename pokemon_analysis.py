"""Pokémon Data Analysis using Pandas.

Run from the repository root:
    python pokemon_analysis.py
"""
from pathlib import Path
import pandas as pd

PROJECT_DIR = Path(__file__).resolve().parent
DATA_FILE = PROJECT_DIR / "data" / "pokemon.csv"
RESULTS_DIR = PROJECT_DIR / "results"

def main():
    df = pd.read_csv(DATA_FILE)

    print("\n--- Dataset preview ---")
    print(df.head())

    print("\n--- Dataset information ---")
    print(df.info())

    print("\n--- Descriptive statistics ---")
    print(df[["HP", "Attack", "Defense", "Speed"]].describe())

    print("\n--- Pokémon with highest Attack ---")
    print(df.loc[df["Attack"].idxmax(), ["Name", "Attack"]])

    print("\n--- Average HP by Type ---")
    hp_by_type = df.groupby("Type", as_index=False)["HP"].mean()
    hp_by_type = hp_by_type.rename(columns={"HP": "Average_HP"})
    print(hp_by_type.sort_values("Average_HP", ascending=False))

    print("\n--- Pokémon count by Type ---")
    print(df["Type"].value_counts())

    print("\n--- Average Attack and Defense by Type ---")
    type_summary = df.groupby("Type", as_index=False).agg(
        Average_Attack=("Attack", "mean"),
        Average_Defense=("Defense", "mean"),
        Pokemon_Count=("Name", "count"),
    )
    print(type_summary)

    RESULTS_DIR.mkdir(exist_ok=True)
    type_summary.to_csv(RESULTS_DIR / "type_summary.csv", index=False)
    print(f"\nSaved type summary to: {RESULTS_DIR / 'type_summary.csv'}")

if __name__ == "__main__":
    main()
