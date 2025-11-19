CREATE MATERIALIZED VIEW IF NOT EXISTS  sales_accumulated_monthly_mv AS 
SELECT 
	EXTRACT(year FROM o.order_date)::integer AS year_,
    EXTRACT(month FROM o.order_date)::integer AS month_,
    sum(od.unit_price * od.quantity::double precision * (1::double precision - od.discount))::numeric(12,2) AS receita
FROM order_details od INNER JOIN orders o ON o.order_id = od.order_id
  GROUP BY 1, 2
  ORDER BY 1, 2