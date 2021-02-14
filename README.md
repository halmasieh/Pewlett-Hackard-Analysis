# Pewlett-Hackard-Analysis

## Project Overview
In this analysis, we started with creating database designs or Entity Relationship Diagrams (ERD) and managed tables by writing SQL statements. 
So in this regard, four csv files were imported directly into the database and out task is to help Pewlett Hackard build an employee database. 
In fact, we used PostgresSQL for holding data and PgAdmin to interface that talks to Postgres. 

This project is done as follows: 
   - Determine the number of retiring employees per title
   - Identify employees who are eligible to participate in a mentorship program and this program includes the current employees who were born between January 1, 1965 and December 31, 1965
   - Provide a report to help the manager prepare for the upcoming "silver tsunami."

## Resources
- Data Sources: employees.csv, departments.csv, dept_emp.csv, titles.csv
- Software: [PostgresSQL](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads), PgAdmin

## Results
Looking at the table following table, we can see:



![here](https://github.com/halmasieh/Pewlett-Hackard-Analysis/blob/main/retiring_%20titles.PNG)



1- By observing the number of titles, it is clear that the highest number of retriees occurs in the title of Senior Engineer and with very small 
difference is Senior Staff. Therefore, the greatest demand four employment is in these positions. Hence, long-term investment in training should be made
to fill these positions. 

2- In the next categories, recruitment should be done in Engineer, Staff, Assisstant Engineer and Technique Leader.

3- The least number who are retiring is for manager position and only two people are needed to fill this job.

4- By viewing the mentorship count per title table at the bottom of this page, the number of eligible employees for the mentorship program is obtained and undoubtedly, Pewllet-Hackard will have to make big decisions for training in different job titles. The company must have a long-term plan to be able to replace these who retire soon. 

5- The Pewllet-Hackard has to be careful of the silver tsunami in order to not face a shortage of employees in different job titles.


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
The rest of roles will need to be filled are Staff, Senior Engineer, Technique Leader, Assisstant Engineer and Manager, respectively.

The table below shows the trainees in the mentorship eligiblity period according to the different roles:



![here](https://github.com/halmasieh/Pewlett-Hackard-Analysis/blob/main/mentorship_eligiblity_count.PNG)



Comparing the above two tables, it is quite clear that the number of qualified trainees in the mentorship program who can replace with 
the silver tsunami retirees is not enough and Pewlett-Hackard needs to train more people to be able to hold various roles in this large company.
The code for the tables is available [here](https://github.com/halmasieh/Pewlett-Hackard-Analysis/blob/main/silver_tsunami.sql).   
















