CREATE OR REPLACE FUNCTION refresh_sales_acumulated_monthly_mv()
RETURNS TRIGGER AS $$ 
BEGIN 
	REFRESH MATERIALIZED VIEW sales_accumulated_monthly_mv;
	RETURN NULL;
END;
$$ LANGUAGE plpgsql;