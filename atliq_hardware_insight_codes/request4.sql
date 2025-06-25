
/*
  Follow-up: Which segment had the most increase in unique products in 
2021 vs 2020? The final output contains these fields, 
segment 
product_count_2020 
product_count_2021 
difference
*/
select segment , count(case when fiscal_year=2020 then fiscal_year end),count(case when fiscal_year=2021 then fiscal_year end)
from dim_product d
join (select product_code,fiscal_year from  fact_gross_price) as f
on d.product_code=f.product_code
group by segment;
