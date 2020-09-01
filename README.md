# ETL-Project

![etl](https://github.com/preeti0103/ETL-Project/blob/master/image/etl-processes.png) </br>


We are creating a database on the World Happiness scores and pairing that data with data from World Bank to see which data points affect the Happiness scores (e.g. population, corruption, GDP per capita etc.)


## 1. Extract :

We collected the data from kaggle.com. The data was in .csv format. Below are the link of our dataset:

1) https://www.kaggle.com/mathurinache/world-happiness-report?select=2020.csv <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/happiness_index.png) <br/>

2) https://www.kaggle.com/mathurinache/world-happiness-report?select=2019.csv <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/happiness_index2019.png) <br/>

3) https://www.kaggle.com/PromptCloudHQ/world-happiness-report-2019 <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/corruption_index.png) <br/>

4) https://www.kaggle.com/tanuprabhu/population-by-country-2020 <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/population.png)


## 2. Transform :

The dataset we got was clean so we were not required to drop any data points like null data. However, we filtered the DataFrame and extracted specific columns that we wanted to keep in our database and renamed the columns' headers to enable merging of two DataFrames based on 'Country' column. Lastly we renamed the column headers to match the column header in our schema.


![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/transform.png) <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/merge.png) <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/new_df.png) <br/>


## 3. Load :

We had a structured dataset so we decided to use PostgresSql to create the database. It becomes easier for data analyst to use SQL based system so that they can easily perform a join on that.

In PgAdmin, we created a new database named 'ETL_project_db' and created tables inside this database. For connecting to this database, we used 'create_engine' module from SQLAlchemy. Finally, we did loading of DataFrame into the SQL database.

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/database_connection.png) <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/screenshots/load_dataframe.png) <br/>


### Entity Relationship Diagram

Below is the Entity Relationship Diagram of our schema: <br/>

![etl](https://github.com/preeti0103/ETL-Project/blob/master/ERD.png)


### Schema

Click for [schema file](https://github.com/preeti0103/ETL-Project/blob/master/schema.sql) file.


