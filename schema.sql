-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/VQ13Zn
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "homicide_final" (
    "country" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "homicide_victims_by_counts_per_100,000_population" INT   NOT NULL,
    CONSTRAINT "pk_homicide_final" PRIMARY KEY (
        "country","year"
     )
);

CREATE TABLE "hpi_final_2015-19" (
    "country" VARCHAR   NOT NULL,
    "population_thousands" INT   NOT NULL,
    "life_expectancy_years" INT   NOT NULL,
    "happy_planet_index" INT   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_hpi_final_2015-19" PRIMARY KEY (
        "country","year"
     )
);

CREATE TABLE "wh_final" (
    "country" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "happiness_score" INT   NOT NULL,
    "gdp_per_capita" INT   NOT NULL,
    CONSTRAINT "pk_wh_final" PRIMARY KEY (
        "year","happiness_score"
     )
);

ALTER TABLE "homicide_final" ADD CONSTRAINT "fk_homicide_final_country" FOREIGN KEY("country")
REFERENCES "wh_final" ("country");

ALTER TABLE "hpi_final_2015-19" ADD CONSTRAINT "fk_hpi_final_2015-19_country" FOREIGN KEY("country")
REFERENCES "wh_final" ("country");

