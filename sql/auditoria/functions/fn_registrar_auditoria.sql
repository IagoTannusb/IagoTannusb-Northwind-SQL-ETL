CREATE OR REPLACE FUNCTION registrar_auditoria_titulo()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO employees_auditoria (employee_id, nome_anterior, nome_novo)
    VALUES (NEW.employee_id, OLD.title, NEW.title);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
