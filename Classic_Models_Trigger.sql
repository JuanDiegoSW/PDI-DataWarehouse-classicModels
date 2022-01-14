USE classicmodels;

DELIMITER $$

CREATE TRIGGER trigger_customers_insert BEFORE INSERT ON customers
FOR EACH ROW BEGIN
	SET NEW.created = SYSDATE();
	SET NEW.updated = SYSDATE();
END; $$

CREATE TRIGGER trigger_customers_update BEFORE UPDATE ON customers
FOR EACH ROW BEGIN
	SET NEW.updated = SYSDATE();
END; $$

CREATE TRIGGER trigger_employees_insert BEFORE INSERT ON employees
FOR EACH ROW BEGIN
	SET NEW.created = SYSDATE();
	SET NEW.updated = SYSDATE();
END; $$

CREATE TRIGGER trigger_employees_update BEFORE UPDATE ON employees
FOR EACH ROW BEGIN
	SET NEW.updated = SYSDATE();
END; $$

CREATE TRIGGER trigger_offices_insert BEFORE INSERT ON offices
FOR EACH ROW BEGIN
	SET NEW.created = SYSDATE();
	SET NEW.updated = SYSDATE();
END; $$

CREATE TRIGGER trigger_offices_update BEFORE UPDATE ON offices
FOR EACH ROW BEGIN
	SET NEW.updated = SYSDATE();
END; $$

CREATE TRIGGER trigger_products_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
	SET NEW.created = SYSDATE();
	SET NEW.updated = SYSDATE();
END; $$

CREATE TRIGGER trigger_products_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
	SET NEW.updated = SYSDATE();
END; $$

DELIMITER ;