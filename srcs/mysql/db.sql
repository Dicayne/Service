CREATE DATABASE wordpress;
CREATE USER 'username'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'username'@'%';
-- CREATE USER pierre@service IDENTIFIED BY "pierre";
-- CREATE USER paul@service IDENTIFIED BY "paul";
-- CREATE USER jaque@service IDENTIFIED BY "jaque";
FLUSH PRIVILEGES;
