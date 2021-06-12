# etl_group_project
**Data clean-up and database creation**
Contributors: Anthony Hopkins, Dipesh Timsina, Andrew Kromer, Megan Spriesterbach

Project Objective

**Extract**: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc)

- Sources: 

  - **PA_facility_pollution.csv** from Kaggle (https://www.kaggle.com/jaseibert/us-facilitylevel-air-pollution-20102014)

  - **cancer_incidence.csv** from EDDIE (https://www.phaim1.health.pa.gov/EDD/) - report parameters of cancer_incidence.csv file below:

    ![](C:\Users\pauls\Desktop\etl_group_project\Cancer Incidence Search Parameters.PNG)

**Transform**: what data cleaning or transformation was required.

- PA Facility Pollution data (PA_facility_pollution.csv)
  - Dropped all columns; kept the following: FacilityName, Latitude, Longitude, LocationAddress, City, State, ZIP, Industry_Clean, Tri_Air_Emissions (2010-2014), GHG_Direct (2010-2014) 
- Cancer Incidence by County data (cancer_incidence.csv)
  - Dropped all columns; kept the following: County, YearStage, Count, Exp_Count, Pop, RateRatioResult, LowerBound_Result, UpperBoundResult

**Load**: the final database, tables/collections, and why this was chosen.

- Utilized Pandas to write dataframes to PostgreSQL (relational database)
- Demonstrated in Jupyter Notebook SQL queries against database
- Intended for future use for county-level analysis (air/ghg pollution vs. cancer rates)

