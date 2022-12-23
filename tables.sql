CREATE TABLE "homicide_final"(  
	"country" VARCHAR NOT NULL,
	"year" INT NOT NULL,
	"homicide_victims_by_counts_per_100,000_population" INT NOT NULL,
	CONSTRAINT "pk homicide final" PRIMARY KEY (
		"country", "year"
	)
);

CREATE TABLE "pi_final_2015_19" (
	"country" VARCHAR NOT NULL,
	"population_ thousands" INT NOT NULL,
	"life expectancy_years" INT NOT NULL,
	"happy_planet_index" INT NOT NULL,
	"year" INT NOT NULL,
	CONSTRAINT "pk_hpi final _2015 19" PRIMARY KEY (
		"country", "year")
);

CREATE TABLE "wh_final" (
	"id" SERIAL PRIMARY KEY,
	"country" VARCHAR NOT NULL,
	"year" INT NOT NULL,
	"happiness_score" INT NOT NULL,
	"gdp_per_capita" INT NOT NULL
);

select * from homicide_final
select * from hpi_final_2015_19
select * from wh_final 

truncate table homicide_final
truncate table hpi_final_2015_19
truncate table wh_final
