### World Happiness and Homicides

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

Step 1: EXTRACT
Downloaded Yearly World Happiness Reports and converted them to dataframes. Dropped and renamed columns, appended them together and formatted numbers. Saved to a csv file in the Outputs folder.
Downloaded UN Homicide Victim data and converted them to dataframes.  Dropped and renamed columns, flipped table format. Saved to a csv file in the Outputs folder.
Downloaded Yearly Happy Planet Index Data and converted to a dataframe. Dropped and renamed columns, separated into yearly data, and pulled the countries that had full data for all five years. Saved to a csv file in the Outputs folder.

Step 2. TRANSFORM
World Happiness Reports 2015 - 2019:
  Dropped Columns
  
  Renames Columns
  
  Appended Columns:
  
  Formatted results:
  
  Saved to wh_final.csv
  
UN World Intentional Homicice Data:
  Dropped Columns
  
  Flipped Year columns to make new rows
  
  Saved to homicide

We made an ERD map and PostgresSQL schema from the three Output files.


