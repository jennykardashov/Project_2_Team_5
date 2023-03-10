# World Happiness and Homicides

Mankwe Ndosi

Evgeniya (Jenny) Kardashov

## Proposal

To serve Eco-tourism or Climate Change and Environmental Non-profits and NGO's, we looked at the World Happiness Index - that measures individual human happiness and the Happy Planet Index - that combines human happiness with ecological consumption data. We chose to combine this data with UN Data on Intentional Homicides - to be able to identify places that were happy for humans, happy for the planet, and peaceful.

## Roles
Mankwe extracted, cleaned, and transformed the Happy Planet Data, wrote the README, made the final ERD, and helped with the SQL work
Jenny extracted, cleaned, and transformed the World Happiness and UN World Intentional Homicide Data, made the SQL Tables and Database, Loaded the Data, fixed Depedency Errors and formatted the README.


## Sources
1. World Happiness Report: https://www.kaggle.com/datasets/mathurinache/world-happiness-report?select=2018.csv
2. Intentional Homicide Victims by counts and rates per 100,000 population: http://data.un.org/DocumentData.aspx?id=443 
3. The Happy Planet Index: https://happyplanetindex.org/hpi/

## The Process

### Step 1: EXTRACT
Downloaded Yearly World Happiness Reports and converted them to dataframes. Dropped and renamed columns, appended them together and formatted numbers. Saved to a csv file in the Outputs folder.
Downloaded UN Homicide Victim data and converted them to dataframes.  Dropped and renamed columns, flipped table format. Saved to a csv file in the Outputs folder.
Downloaded Yearly Happy Planet Index Data and converted to a dataframe. Dropped and renamed columns, separated into yearly data, and pulled the countries that had full data for all five years. Saved to a csv file in the Outputs folder.

## Step 2. TRANSFORM
1.  World Happiness Reports 2015 - 2019:
  
    - Dropped Columns: 'Region', 'Standard Error', 'Generosity','Dystopia Residual', 'Happiness Rank', 'Family', 'Health (Life Expectancy)', 'Freedom',      'Trust (Government Corruption)', 'Whisker.high', 'Whisker.low', 'Overall rank', 'Social support', 'Healthy life expectancy', 'Freedom to make life choices', 'Perceptions of corruption'
    - Renamed Columns
  Economy (GDP per Capita)": "gdp_per_capita", 
  "Country": "country",
  "Happiness Score": "happiness_score"
 "Country or region": "country", 
 "Score": "happiness_score"
    - Dropped Rows with Null Values
    - Added Year Column
    - Appended Year dataframes together  
  
2. UN World Intentional Homicide Data:
    - Dropped Columns: 'Subregion', 'Region', '2020'
    - Dropped Rows with Null Values
    - Flipped columns to make new rows "year", "homicide_victims_by_counts_per_100,000_population"
    - Sorted by Country
  
3. Happy Planet Index Data:
     - Dropped Columns: "HPI rank", "ISO", "Continent", "Ladder of life (Wellbeing) (0-10)", "Ecological Footprint (g ha)", "Biocapacity for year \n(g ha)", "GDP per capita ($)"
    - Renamed Columns: "Country": "country", "Unnamed: 3" : "year_ctry_code", "Population (thousands)": "population_thousands", "Life Expectancy (years)":"life_expectancy_years", "HPI" : "happy_planet_index"
    - Split Column and Add segmented column
"year_ctry_code" into a "year" column and added it to the DataFrame
    - Dropped Rows with Null Values
    - Grouped Dataframe by Year 
    - Found the Countries with data for all five years and put them into a Dataframe

## STEP 3 LOAD

1. We made and ERD map in QuickDatabaseDesigns

![ERD](https://github.com/jennykardashov/Project_2_Team_5/blob/main/globalhappiness_homicides_ERD.png)

2. We made tables in PostgresSQL.

https://github.com/jennykardashov/Project_2_Team_5/blob/main/tables.sql

2. We fixed Dependency Errors and Loaded the data into the PostgresSQL tables with pandas in the corresponding Jupyter Notebooks.
