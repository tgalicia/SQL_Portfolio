
/*
Analysis for Total Sales by Month & year
*/

SELECT sum(Sales) as monthly_sales,
EXTRACT (MONTH FROM order_date) AS month,
EXTRACT (YEAR FROM order_date) AS year
FROM `projects-2022-356920.superstore_data.superstore_totals`
GROUP BY year, month
Order by year, month asc;

/*
Analysis for Monthly Profit
*/

SELECT sum(profit) as monthly_profit,
EXTRACT (MONTH FROM order_date) AS month,
EXTRACT (YEAR FROM order_date) AS year
FROM `projects-2022-356920.superstore_data.superstore_totals`
GROUP BY year, month
Order by year, month asc;


/*
Analysis for Category Sales per Month
*/

SELECT Category, count(Category) as category_total,
EXTRACT (MONTH FROM order_date) AS month,
EXTRACT (YEAR FROM order_date) AS year
FROM `projects-2022-356920.superstore_data.superstore_totals`
GROUP BY month, year, Category
Order by year asc , month asc;
