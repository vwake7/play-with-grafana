# Steps to create a Bar Chart in Grafana

### 1. Create a Docker image for Postgres
      sudo docker run --rm --name some-postgres  -e POSTGRES_USER=cdbuser -e POSTGRES_PASSWORD=postgres -d postgres
   
### 2. Create a Docker image for Grafana
      sudo docker run -d --rm --name some-grafana --network="host" grafana/grafana
### 3. Download the sql from bar-chart.sql and execute in your Postgres db

### 4. Connect to Postgres DB using the Data Sources in Grafana 

### 5. Browse the Grafana url - localhost:3000

### 6. Create a new Panel and select Bar Chart as the Visualization

### 7. Paste below sql in the Code Panel
SELECT *
FROM organization.crosstab(
 'SELECT Year::text, city, rainfall_in_inch from public.rainfall order by 1,2 ' 
 ) AS ("Year" text, "Bangalore" int, 
 "Chennai" int, "Hyderabad" int, "Delhi" int, 
 "Kolkata" int, "Mumbai" int);

### 8. You will see the bar chart, if you want it stacked, choose 'Stacking' as Normal
![Screenshot from 2023-11-23 10-30-34](https://github.com/vwake7/play-with-grafana/assets/67334021/28b7b647-c735-4ba6-a91b-6c6957530475)
