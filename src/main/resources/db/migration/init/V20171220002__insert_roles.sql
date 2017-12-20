INSERT INTO roles (name) VALUES ('ROLE_ADMIN'), ('ROLE_MANAGER'), ('ROLE_USER');

BEGIN
  IF NOT EXISTS (SELECT * FROM roles WHERE name = 'ROLE_ADMIN')
  BEGIN
    INSERT INTO roles (name) VALUES ('ROLE_ADMIN')
  END
END