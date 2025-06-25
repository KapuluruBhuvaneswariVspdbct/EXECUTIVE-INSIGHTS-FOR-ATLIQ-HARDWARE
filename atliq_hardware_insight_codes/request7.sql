
/*
 Get the complete report of the Gross sales amount for the customer  “Atliq 
Exclusive”  for each month  .  This analysis helps to  get an idea of low and 
high-performing months and take strategic decisions. 
The final report contains these columns: 
Month 
Year 
Gross sales Amount
*/


select month(date) ,fiscal_year, sum(sold_quantity*gross_price) as gross_sales from (select product_code,fiscal_year,gross_price,date,customer_code,sold_quantity from fact_sales_monthly join fact_gross_price using(fiscal_year,product_code)) as m 
where customer_code in (select customer_code from dim_customer where customer='atliq exclusive') group by fiscal_year,month(date) order by fiscal_year , gross_sales desc
;
