CREATE ROLE csus;
CREATE ROLE oep;
CREATE DATABASE csus;
GRANT INSERT ON csus.* TO csus;
GRANT SELECT, CREATE ON csus.* TO oep;