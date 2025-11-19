CREATE TRIGGER trg_orders_mv_refresh_sales_accumulated_monthly
AFTER INSERT OR UPDATE OR DELETE ON orders
FOR EACH STATEMENT
EXECUTE FUNCTION refresh_sales_acumulated_monthly_mv();