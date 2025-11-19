CREATE TRIGGER trg_auditoria_titulo
AFTER UPDATE OF title ON employees
FOR EACH ROW 
EXECUTE FUNCTION registrar_auditoria_titulo();