/*
10.  Get the Top 3 products in each division that have a high 
total_sold_quantity in the fiscal_year 2021? The final output contains these 
fields, 
division 
product_code 
product 
total_sold_quantity 
rank_order 
*/
select * from (
select division ,product_code,product,sum(sold_quantity) ,rank() over(partition by division order by sum(sold_quantity) desc) as ranke from dim_product join fact_sales_monthly using(product_code)  group by product,product_code,division  )as a where ranke<=3 ;
