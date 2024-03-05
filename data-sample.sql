CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    date_of_birth DATE
);
INSERT INTO employees (id, first_name, last_name, email, date_of_birth) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1980-01-01'),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '1982-02-02'),
(3, 'Jim', 'Beam', 'jim.beam@example.com', '1975-03-03'),
(4, 'Jack', 'Daniels', 'jack.daniels@example.com', '1978-04-04'),
(5, 'Josie', 'Wales', 'josie.wales@example.com', '1985-05-05'),
(6, 'Jill', 'Valentine', 'jill.valentine@example.com', '1987-06-06'),
(7, 'Chris', 'Redfield', 'chris.redfield@example.com', '1984-07-07'),
(8, 'Leon', 'Kennedy', 'leon.kennedy@example.com', '1982-08-08'),
(9, 'Claire', 'Redfield', 'claire.redfield@example.com', '1989-09-09'),
(10, 'Ada', 'Wong', 'ada.wong@example.com', '1990-10-10'),
(11, 'Albert', 'Wesker', 'albert.wesker@example.com', '1976-11-11'),
(12, 'Barry', 'Burton', 'barry.burton@example.com', '1974-12-12');