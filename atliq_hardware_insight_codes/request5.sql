/*
 Get the products that have the highest and lowest manufacturing costs. 
The final output should contain these fields, 
product_code 
product 
manufacturing_cost
*/


select D.PRODUCT_CODE,PRODUCT ,MANUFACTURING_COST  FROM (
SELECT * FROM fact_manufacturing_cost
WHERE MANUFACTURING_COST =(SELECT MIN(manufacturing_cost)FROM fact_manufacturing_cost) OR  MANUFACTURING_COST = (SELECT MAX(manufacturing_cost)FROM fact_manufacturing_cost )) AS F
JOIN dim_product AS D 
ON D.PRODUCT_CODE = F.PRODUCT_CODE;

select product_code,product,manufacturing_cost from ( select * from fact_manufacturing_cost as f
join dim_product 
using(product_code))as a
where manufacturing_cost = (select min(manufacturing_cost) from fact_manufacturing_cost) or  manufacturing_cost = (select max(manufacturing_cost) from fact_manufacturing_cost) ;
