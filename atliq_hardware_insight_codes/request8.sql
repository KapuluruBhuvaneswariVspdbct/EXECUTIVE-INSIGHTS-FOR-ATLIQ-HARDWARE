
/*
8.  In which quarter of 2020, got the maximum total_sold_quantity? The final 
output contains these fields sorted by the total_sold_quantity, 
Quarter 
total_sold_quantity
*/
select 'q1' as quarter ,sum(sold_quantity) as total_sold_quantity from fact_sales_monthly where month(date) in (1,2,3)
union all
select 'q2' ,sum(sold_quantity) from fact_sales_monthly where month(date) in (5,4,6)
union all
select 'q3'  ,sum(sold_quantity)  from fact_sales_monthly where month(date) in (7,8,9)
union all
select 'q4 ',sum(sold_quantity) from fact_sales_monthly where month(date) in (10,11,12)
;
