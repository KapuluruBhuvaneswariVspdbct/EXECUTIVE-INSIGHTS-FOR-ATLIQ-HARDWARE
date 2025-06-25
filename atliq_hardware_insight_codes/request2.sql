/*
.  What is the percentage of unique product increase in 2021 vs. 2020? The 
final output contains these fields, 
unique_products_2020 
unique_products_2021 
percentage_chg 
*/

select unique_products_2020 ,unique_products_2021,((unique_products_2021-unique_products_2020)*100)/(unique_products_2020) from
(select count(case when fiscal_year=2020 then fiscal_year end) as unique_products_2020 ,count(case when fiscal_year=2021 then fiscal_year end) as unique_products_2021 from fact_gross_price)as a;
