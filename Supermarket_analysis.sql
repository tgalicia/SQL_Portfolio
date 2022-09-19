/*
Analysis for Gross Sales of Product line by gender
*/

select gender, product_line, sum(gross_total) as product_gross_total
from supermarket_sales
group by product_line, gender
order by product_line, product_gross_total;

/*
Analysis for Gross Sales by store
*/

select branch, sum(gross_total)
from supermarket_sales
group by branch;

/*
Analysis for Product line by store
*/


select branch, product_line, sum(gross_total)
from supermarket_sales
group by branch, product_line;

