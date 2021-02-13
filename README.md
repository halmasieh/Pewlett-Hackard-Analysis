# Pewlett-Hackard-Analysis

## Project Overview
 This project is done as follows: 
   - Determine the number of retiring employees per title
   - Identify employees who are eligible to participate in a mentorship program
  
 In this analysis, we started with creating database designs or Entity Relationship Diagrams (ERD) and managed tables by writing SQL statements. 
So in this regard, four csv files were imported directly into the database and out task is to help Pewlett Hackard build an employee database by the 
Silver Tsunami. 
with SQL by data modeling, engineering an danalysis skills. 

In fact, we used SQL to explore and manipilate the data by asking questions about data and discovering relationships between dta tables. 
We used postgressql for holding data and pgAdmin to interface that talks to postgres. 
   


## Resources
- Data Sources: employees.csv, departments.csv, dept_emp.csv, titles.csv
- Software: [PostgresSQL)](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads), PgAdmin

## Results
Looking at the ride-sharing dataframe, we can see:


![here](https://github.com/halmasieh/PyBer_Analysis/blob/main/ride_sharing_data.PNG)



   - The total rides in the urban cities is about 2.6- and 13-times more per city than the suburban and rural cities, respectively.
   - The total drivers in the urban cities is about 5- and 31-times more per city than the suburban and rural cities, respectively. This shows that driving jobs
   in the urban cities is more prosperous.
   - The total fares in the urban cities is about 39854 which is not much different from the total fares in the suburban cities, almost 2.1-times and it is still
   9.2-times more per city than the rural cities.
   - The amount of average fare per ride in the rural and suburban cities is very close while the average fare per ride in the urban cities is less than the 
   amount of average fare per ride in the recent cities.
   - The average fare per driver in the rural and suburban cities is about 3.3- and 2.4-times more than the average fare per driver in the urban cities, repectively.

The above results show that the total rides, drivers and fares in the urban cities are more than the other cities while the average fare per ride and driver in the rural 
cities are more than the suburban and urban cities. In other words, suburban cities are mediated by all the five parameters.

## Summary

In fact "Silver Tsunami" is a metaphor used to describe the expected increase in the senior population. Today 15% of Americans are 65 or older and the aging population
can bring positive change to healthcare and senior living. Avtually, there are three main areas of our economy and society that will be most affected by 
- Health Care Resources
- Economic Struggles
- Workforce Influence

Focus on the latter, lest all this sound hopeless and awful, many seniors will stay healthy long enough to work past the age they may have had in mind for retirement. 
We performed this analysis on personels over sixty five years old with different job titles and the results are shown in the following table as:



![here](https://github.com/halmasieh/Pewlett-Hackard-Analysis/blob/main/silver_tsunami.PNG)



Most people over 65 years who retire soon are Engineers and Senior Staffs, repectively, therefore, the need to employ these two roles is a priority.
The rest of roles will need to be filled are Staff, Senior Engineer, Assisstant Engineer, Technique Leader and Manager, respectively.

The table below shows the trainees in the mentorship eligiblity period according to the different roles:



![here](https://github.com/halmasieh/Pewlett-Hackard-Analysis/blob/main/mentorship_eligiblity_count.PNG)



Comparing the above two tables, it is quite clear that the number of qualified trainees in the mentorship eligibility who can replace with 
the silver tsunami retirees is not enough and Pewlett-Hackard needs to train more people to be able to hold various roles in this large company.
















