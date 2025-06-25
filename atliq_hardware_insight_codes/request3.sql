/*
  Provide a report with all the unique product counts for each  segment  and 
sort them in descending order of product counts. The final output contains 
2 fields, 
segment 
product_count
*/

SELECT SEGMENT, COUNT(*) AS PRODUCT_COUNT FROM DIM_PRODUCT
GROUP BY SEGMENT
ORDER BY PRODUCT_COUNT DESC;
