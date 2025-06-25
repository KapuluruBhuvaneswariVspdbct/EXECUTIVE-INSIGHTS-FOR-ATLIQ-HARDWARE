/*  Which channel helped to bring more gross sales in the fiscal year 2021 
and the percentage of contribution?  The final output  contains these fields, 
channel 
gross_sales_mln 
percentage 
*/



select channel , gross_sales_mln , round(gross_sales_mln*100/sum(gross_sales_mln) over(),2) as percentage from(
select channel , sum(gross_sales ) as gross_sales_mln from 
(select customer_code , sum(sold_quantity *gross_price) as  gross_sales from fact_sales_monthly join fact_gross_price  using(product_code) where  fact_gross_price .fiscal_year=2021 group by customer_code) as m
join dim_customer using(customer_code) group by channel) as a;
