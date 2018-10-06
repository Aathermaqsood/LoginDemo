
DROP TABLE USERS IF EXISTS;
DROP TABLE USER_ROLES IF EXISTS;

CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id));

INSERT INTO users(username,password,enabled)
VALUES ('test','12', true);
INSERT INTO users(username,password,enabled)
VALUES ('alex','13', true);

INSERT INTO user_roles (username, role)
VALUES ('test', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('test', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('alex', 'ROLE_USER');