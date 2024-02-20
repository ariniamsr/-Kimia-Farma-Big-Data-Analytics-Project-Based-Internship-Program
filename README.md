# Final Task: Salicyl Sales Dashboard
Project-Based Virtual Intern : Big Data Analyst Kimia Farma x Rakamin Academy

Presented by **Arini Arumsari**

## Case Study
**Process the raw data from end to end with the output in the dashboard version.**


### Data Gathering
1. The dataset was downloaded from the Google Drive link and then saved to a local file.
2. Next, the dataset was uploaded to PostgreSQL for further processing.
3. The dataset consists of four tables and is ready for further analysis and manipulation.


### Data Understanding
#### Create Database
The CREATE TABLE statement creates a new table in a database. You can also create temporary tables with the CREATE TABLE statement. <br>
**[Link Query](https://github.com/ariniamsr/Kimia-Farma-Big-Data-Analytics-Project-Based-Internship-Program/blob/main/postgreesql/createandprimary.sql)**


#### Primary Key
a primary key is a column that uniquely identifies each row of data in a table. It can distinguish one row from another and is often used as a reference for other tables. The primary key value in each row must be unique, and there must be no duplicates. This primary key ensures that the data in the table is organized in a structured and efficient way.

Determine each primary key in the 4 sales tables. <br>
1. Primary key tabel penjualan : id_invoice <br>
2. Primary key tabel barang : kode_barang <br>
**[Link Query](https://github.com/ariniamsr/Kimia-Farma-Big-Data-Analytics-Project-Based-Internship-Program/blob/main/postgreesql/Primarykey.sql)**

#### Relationship Table <br>
A table relationship works by matching data in key fields — often a field with the same name in both tables. In most cases, these matching fields are the primary key from one table, which provides a unique identifier for each record, and a foreign key in the other table. <br>
**[Link Query](https://github.com/ariniamsr/Kimia-Farma-Big-Data-Analytics-Project-Based-Internship-Program/blob/main/postgreesql/ForeignKey.sql)** <br>


#### Design Datamart<br>
 Assumptions:

Three tables are available in the data lake: sales, customers, and products.
The data lake uses the id_penjualan field as the primary key.
Steps:

1. Base Table

a. The base table is created by joining the three tables based on the id_penjualan field.
b. The base table will have the same number of rows as the sales table.
c. The base table is stored in the data warehouse.
**[Link Query](https://github.com/ariniamsr/Kimia-Farma-Big-Data-Analytics-Project-Based-Internship-Program/blob/main/postgreesql/base.sql
)** 

2. Aggregate Table

a. The aggregate table is derived from the base table by grouping the data by date, id_customer, and id_invoice.
b. The aggregate table is stored in the data mart.<br>
**[Link Query](https://github.com/ariniamsr/Kimia-Farma-Big-Data-Analytics-Project-Based-Internship-Program/blob/main/postgreesql/aggregat.sql)** <br>


### Data Analyzing & visualization <br>
#### Data Visualization <br>
Data visualization is the representation of data through use of common graphics, such as charts, plots, infographics, and even animations. <br>
![dashboard-capture](https://github.com/ariniamsr/Kimia-Farma-Big-Data-Analytics-Project-Based-Internship-Program/blob/main/pic/dashboard.png) <br>

**[Link Dashboard a.k.a Looker Studio](https://lookerstudio.google.com/u/0/reporting/f91064ea-a92b-4e4a-a20b-57ffb9c96d8d/page/FnvnD)**

#### Insights
1. The number of Product Categories from Robot Kits is increased because based on sales data the Product Category from Robot Kits enters the top 5 sales. Which means that there is more interest in the Robot Kits Product Category than in the Blueprints Product Category. <br>
2. In the top 5 sales graph, the Product Category from Robots has the most sales compared to the others, it would be better if we add more Product Categories from Robots. <br>
3. Because the Product Category of Training Videos is in the top 5 final levels, with sales numbers quite far from the other top 5. it's better if we just reduce the number of Product Categories of Training Videos. <br>
**[Link Presentation](https://github.com/ariniamsr/Kimia-Farma-Big-Data-Analytics-Project-Based-Internship-Program/blob/main/Tugas_5%20-%20Arini%20-%20Big%20Data%20Analytics%20Kimiafarma.pdf)**

                                                                          ***🌻Thank You🌻***
