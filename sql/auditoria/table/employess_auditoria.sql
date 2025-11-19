CREATE TABLE IF NOT EXISTS employees_auditoria(
	employee_id INT,
	nome_anterior VARCHAR(100),
	nome_novo VARCHAR(100),
	data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 