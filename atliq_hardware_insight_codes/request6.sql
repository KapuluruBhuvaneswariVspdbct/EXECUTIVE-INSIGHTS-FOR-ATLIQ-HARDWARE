/*  Generate a report which contains the top 5 customers who received an 
average high  pre_invoice_discount_pct  for the  fiscal  year 2021  and in the 
Indian  market. The final output contains these fields, 
customer_code 
customer 
average_discount_percentage */
select f.customer_code , customer , f.average_discount_percentage from 
(select customer_code , avg(case when fiscal_year=2021 then pre_invoice_discount_pct  end) as average_discount_percentage from fact_pre_invoice_deductions group by customer_code) as f
join dim_customer as d
using(customer_code)
where market="india"
order by f.average_discount_percentage desc limit 5;
