/*
 Provide the list of markets in which customer  "Atliq  Exclusive"  operates its 
business in the  APAC  region.
*/

SELECT market FROM dim_customer
WHERE region = 'APAC' and customer='Atliq Exclusive';
