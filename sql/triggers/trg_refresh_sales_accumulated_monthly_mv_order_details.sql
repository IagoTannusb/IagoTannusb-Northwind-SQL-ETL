CREATE TRIGGER trg_refresh_sales_accumulated_monthly_mv_order_details
AFTER INSERT OR UPDATE OR DELETE ON order_details 
FOR EACH STATEMENT 
EXECUTE FUNCTION refresh_sales_acumulated_monthly_mv();