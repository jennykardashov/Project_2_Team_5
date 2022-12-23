# World Happiness and Homicides

Mankwe Ndosi

Evgeniya (Jenny) Kardashov

## Proposal

To serve Eco-tourism or Climate Change and Environmental Non-profits and NGO's, we looked at the World Happiness Index - that measures individual human happiness and the Happy Planet Index - that combines human happiness with ecological consumption data. We chose to combine this data with UN Data on Intentional Homicides - to be able to identify places that were happy for humans, happy for the planet, and peaceful.

## Roles
Mankwe Extracted cleaned, and transformed the Happy Planet Data, wrote the README, and helped with the SQL work
Jenny Extracted, cleaned, and transformed the World Happiness and UN World Intentional Homicide Data, made the ERD, and 


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
    - Saved to wh_final.csv
  
2. UN World Intentional Homicice Data:
    - Dropped Columns: 'Subregion', 'Region', '2020'
    - Dropped Rows with Null Values
    - Flipped columns to make new rows "year", "homicide_victims_by_counts_per_100,000_population"
    - Sorted by Country
    - Saved to homicide_final.csv
  
3. Happy Planet Index Data:
     - Dropped Columns: "HPI rank", "ISO", "Continent", "Ladder of life (Wellbeing) (0-10)", "Ecological Footprint (g ha)", "Biocapacity for year \n(g ha)", "GDP per capita ($)"
    - Renamed Columns: "Country": "country", "Unnamed: 3" : "year_ctry_code", "Population (thousands)": "population_thousands", "Life Expectancy (years)":"life_expectancy_years", "HPI" : "happy_planet_index"
    - Split Column and Add segmented column
"year_ctry_code" into a "year" column and added it to the DataFrame
    - Dropped Rows with Null Values
    - Grouped Dataframe by Year 
    - Found the Countries with data for all five years and put them into a Dataframe
    - Saved to hpi_final_2015_2019.csv file

## STEP 3 LOAD

1. We made an ERD map and PostgresSQL schema from the three Output files. 
    
![ERD](https://github.com/jennykardashov/Project_2_Team_5/blob/main/ERD.png)

2. We made tables from the PostgresSQL schema.

3. We were adding the engine and sqlalchemy connections to our jupyter notebook files, to load the databases into PostgresSQL , but there was an internl sqlAlchemy error that would not allow the connection , or even the importing of the dependencies, to occur. 

4. So we made screenshots of the error, and our Database tables. ;(
![error_1](https://github.com/jennykardashov/Project_2_Team_5/blob/main/Outputs/error1.png)

![error_2](https://github.com/jennykardashov/Project_2_Team_5/blob/main/Outputs/error2.png)



