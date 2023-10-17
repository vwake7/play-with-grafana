# Grafana Dashboard - Node graph

## Steps to create a Nodegraph panel to represent parent child-relationships, hierarchial relationships

### 1. Create a Docker image for Postgres
      sudo docker run --rm --name some-postgres --network="host" -e POSTGRES_USER=cdbuser -e POSTGRES_PASSWORD=postgres -d postgres
   
## 2. Create a Docker image for Grafana
      sudo docker run -d --rm --name some-grafana -p 3001:3000 --network="host" grafana/grafana

## 3. Download the sql from node-graph.sql and execute in your Postgres db

## 4. Connect to Postgres DB using the Data Sources in Grafana 

## 5. Create a new Panel and select Node Graph as the Visualization

## 6. Paste 'Select * from edge;' in the Code Panel
   
