# Taxi Analyses using DBT, TLC Trip Record Data
This project involves analyzing taxi trip data collected and provided to the [NYC Taxi and Limousine Commission (TLC)](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page) by authorized technology providers under the Taxicab & Livery Passenger Enhancement Programs. The data includes trip details such as pick-up and drop-off dates/times, locations, trip distances, fares, rate types, payment types, and passenger counts.

<a href="https://lookerstudio.google.com/reporting/9910699d-c282-422e-985b-198bde4c81ca">
  <img src="https://user-images.githubusercontent.com/58158274/223428250-11582019-27ed-453c-a62b-d962b86cb820.png" alt="2022_Trips_analyses">
</a>

**Visualization:** The analyses visualization was created using Google Lookerstudio and can be accessed at https://lookerstudio.google.com/reporting/9910699d-c282-422e-985b-198bde4c81ca.

### **Dataset Information:** The data used in this project is from 2022 (December not already included by TLC).

**models/core:** The models/core directory contains the configuration file for the core data models, including `dim_zones`, `fact_trips`, and `dm_monthly_zone_revenue`.

- `dim_zones` is a list of unique zones identified by location ID and includes the service zone they correspond to (green or yellow).
- `fact_trips` is a table containing records where both pick-up and drop-off locations are valid and known zones. Each record corresponds to a trip uniquely identified by trip ID.
- `dm_monthly_zone_revenue` is an aggregated table of all taxi trips corresponding to both service zones per pick-up zone, month, and service. The table contains monthly sums of the fare elements used to calculate the monthly revenue, as well as monthly indicators like the number of trips and average trip distance.
 
**models/staging:** The models/staging directory contains the files for the staging models. It has two files:

- `stg_yellow_tripdata.sql` This file loads the yellow taxi trip data into a staging table.
- `stg_green_tripdata.sql` This file loads the green taxi trip data into a staging table.

### **DBT Macros:**
The `get_payment_type_description.sql` macro returns a description of payment types (`payment_type`).

