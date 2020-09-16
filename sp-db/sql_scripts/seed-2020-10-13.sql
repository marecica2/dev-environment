create schema filedb;
CREATE USER 'fileuser'@'%' IDENTIFIED BY 'fileusersecret';
GRANT ALL PRIVILEGES ON filedb.* TO 'fileuser'@'%';
