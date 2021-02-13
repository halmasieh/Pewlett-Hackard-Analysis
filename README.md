# Pewlett-Hackard-Analysis

## Project Overview
 This project is done as follows: 
   - Determine the number of retiring employees per title
   - Identify employees who are eligible to participate in a mentorship program
  
 Using the Python environment Jupyter Notebook and Pandas and applying two-dimensional plotting library Matplotlib, assist us to produce publication quality figures
 and tell a visual story from the data which means to present complex findings in a way that is informative and engaging to all the stockholders. 
 
 In fact, the specific purpose of this analysis is to create a summary dataframe of the ride-sharing data by city type and then using pandas and Matplotlib to create 
 a multiple-line graph that shows the total weekly fares for each city type. 
   


## Resources
- Data Sources: employees.csv, departments.csv, dept_emp.csv, titles.csv
- Software: [Anaconda( Jupyter Notebook )](https://www.anaconda.com/products/individual), [Matplotlib-Python Plotting](https://matplotlib.org/) 

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









In this analysis, we started with creating database designs or Entity Relationship Diagrams (ERD) and managed tables by writing SQL statements. 
So in this regard, four csv files were imported directly into the database and out task is to help Pewlett Hackard build an employee database by the 
Silver Tsunami. 






with SQL by data modeling, engineering an danalysis skills. 

In fact, we used SQL to explore and manipilate the data by asking questions about data and discovering relationships between dta tables. 
We used postgressql for holding data and pgAdmin to interface that talks to postgres. 


1- Looking at the sum of the fare for each week in the first quarter of the year, 



![here](https://github.com/halmasieh/PyBer_Analysis/blob/main/sum_fare.PNG)



the total fares in the urban cities is more than the other type of cities and it could be a sence of overall revenue.

2- The analysis of the total fare from January-April 2019 based on the following plot is as follows:



![here](https://github.com/halmasieh/PyBer_Analysis/blob/main/PyBer_fare_summary.png)


   - The urban cities experienced the highest total fare before and after the month March and on equal terms this happens 
 for suburban and rural cities before March and in April, repectively. 
   - In general, total fare fluctation for urban, suburban and rural cities is in the intervals [1700-2500], [750,1400] and [0,500], respectively. Therefore, 
   monitoring the growth and stagnation of cities, can be used to start a business in the transportation industry.   
   - Almost from mid-April, total fare growth in suburban cities has an upward trend compared to other type of cities.
   
 
 Undoubtedly, This analysis can be effective in job creation and economic circulation of the cities.
