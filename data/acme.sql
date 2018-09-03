CREATE TABLE IF NOT EXISTS users (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  login VARCHAR(255),
  password VARCHAR(255)
)
ENGINE = InnoDB
CHARSET = utf8
COMMENT ='user table'
AUTO_INCREMENT = 1;

TRUNCATE TABLE users;
INSERT INTO users VALUES(1,'admin','changeme');
INSERT INTO users VALUES(2,'guest','changeme');

