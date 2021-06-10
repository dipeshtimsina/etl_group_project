-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/NA163W
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS "County";
DROP TABLE IF EXISTS "Cancer_Data";
DROP TABLE IF EXISTS "Facilities";


CREATE TABLE "County" (
    "County" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_County" PRIMARY KEY (
        "County"
     )
);

CREATE TABLE "Cancer_Data" (
    "County" VARCHAR(50)   NOT NULL,
    "Year" INT   NOT NULL,
    "Stage" VARCHAR(25)   NOT NULL,
    "Count" INT   NOT NULL,
    "Exp_Count" INT   NOT NULL,
    "Pop" INT   NOT NULL,
    "RateRatioResult" INT   NOT NULL,
    "LowerBound_Result" INT   NOT NULL,
    "UpperBoundResult" INT   NOT NULL
);

CREATE TABLE "Facilities" (
    "FacilityName" VARCHAR(50)   NOT NULL,
    "Latitude" FLOAT   NOT NULL,
    "Longitude" FLOAT   NOT NULL,
    "LocationAddress" VARCHAR(50)   NOT NULL,
    "City" VARCHAR(50)   NOT NULL,
    "State" VARCHAR(50)   NOT NULL,
    "ZIP" INT   NOT NULL,
    "County" VARCHAR(50)   NOT NULL,
    "Industry_Clean" VARCHAR(50)   NOT NULL,
    "TRI_Air_Emissions_10_in_lbs" VARCHAR(50)   NOT NULL,
    "TRI_Air_Emissions_11_in_lbs" VARCHAR(50)   NOT NULL,
    "TRI_Air_Emissions_12_in_lbs" VARCHAR(50)   NOT NULL,
    "TRI_Air_Emissions_13_in_lbs" VARCHAR(50)   NOT NULL,
    "TRI_Air_Emissions_14_in_lbs" VARCHAR(50)   NOT NULL,
    "GHG_Direct_Emissions_10_in_metric_tons" VARCHAR(50)   NOT NULL,
    "GHG_Direct_Emissions_11_in_metric_tons" VARCHAR(50)   NOT NULL,
    "GHG_Direct_Emissions_12_in_metric_tons" VARCHAR(50)   NOT NULL,
    "GHG_Direct_Emissions_13_in_metric_tons" VARCHAR(50)   NOT NULL,
    "GHG_Direct_Emissions_14_in_metric_tons" VARCHAR(50)   NOT NULL
);

ALTER TABLE "Cancer_Data" ADD CONSTRAINT "fk_Cancer_Data_County" FOREIGN KEY("County")
REFERENCES "County" ("County");

ALTER TABLE "Facilities" ADD CONSTRAINT "fk_Facilities_County" FOREIGN KEY("County")
REFERENCES "County" ("County");
