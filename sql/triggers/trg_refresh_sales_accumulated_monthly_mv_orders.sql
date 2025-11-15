CREATE TRIGGER trg_refresh_sales_accumulated_monthly_mv_orders
AFTER INSERT OR UPDATE OR DELETE ON orders
FOR EACH STATEMENT
EXECUTE FUNCTION refresh_sales_acumulated_monthly_mv();