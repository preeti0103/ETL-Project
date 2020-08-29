-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/wxKaqd
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "country" (
    "country_id" INT   NOT NULL,
    "country_name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "happiness_index" (
    "happiness_rank" INT   NOT NULL,
    "country_id" INT   NOT NULL,
    "happiness_score" FLOAT   NULL,
    CONSTRAINT "pk_happiness_index" PRIMARY KEY (
        "happiness_rank"
     )
);

CREATE TABLE "corruption_index" (
    "corruption_index" INT   NOT NULL,
    "country_id" INT   NOT NULL,
    "corruption_score" FLOAT   NULL,
    CONSTRAINT "pk_corruption_index" PRIMARY KEY (
        "corruption_index"
     )
);

CREATE TABLE "population" (
    "country_id" INT   NOT NULL,
    "population" BIGINT   NOT NULL,
    "density" INT   NOT NULL,
    CONSTRAINT "pk_population" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "gdp_data" (
    "country_id" INT   NOT NULL,
    "gdp_per_capita" FLOAT   NULL,
    CONSTRAINT "pk_gdp_data" PRIMARY KEY (
        "country_id"
     )
);

ALTER TABLE "happiness_index" ADD CONSTRAINT "fk_happiness_index_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "corruption_index" ADD CONSTRAINT "fk_corruption_index_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "population" ADD CONSTRAINT "fk_population_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "gdp_data" ADD CONSTRAINT "fk_gdp_data_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

