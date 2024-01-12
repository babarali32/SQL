create database syntax_hrm_batch_11;
use syntax_hrm_batch_11;
CREATE TABLE IF NOT EXISTS person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);
-- Inserting values into the example_table with specified id values
INSERT INTO person (id, name) VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Bob Johnson');
