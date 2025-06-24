USE DatabaseTask;

INSERT INTO employee(SSN, FNAME, LNAME, GENDER, BIRTHDATE, SUPERSSN, DNUM)
VALUES
    ('123456789', 'Omar', 'Khalid', 'M', '1980-01-01', NULL, NULL),
    ('234567890', 'Sara', 'Yousuf', 'F', '1985-02-02', NULL, NULL),
    ('345678901', 'Nabil', 'Hassan', 'M', '1978-03-03', NULL, NULL);

SELECT * FROM employee

INSERT INTO department (DNUM, DNAME, SSN, MHDATE)
VALUES 
    (2, 'IT', '123456789', '2025-01-01'),
    (2, 'OPERATIONS', '234567890', '2020-02-02'),
    (3, 'SALES', '345678901', '2023-03-03');

SELECT * FROM department

UPDATE department SET DNUM = 1 WHERE SSN = '123456789';

INSERT INTO dependent (Name, SSN, GENDER, BIRTHDATE)
VALUES 
    ('Omar', '123456789', 'M', '2000-08-09'),
    ('Sara', '234567890', 'F', '2001-10-10'),
    ('Nabil', '345678901', 'M', '1999-11-07');

SELECT * FROM dependent

INSERT INTO dependent (Name, SSN, GENDER, BIRTHDATE)
VALUES ('Laila', '987654321', 'F', '2010-05-15');

SELECT * FROM dependent

DELETE FROM dependent
WHERE Name = 'Laila' AND SSN = '987654321';

INSERT INTO DEARTMENTLOC (LOCATION, DNUM)
VALUES 
    ('New York', 1),
    ('Muscat', 2),
    ('Doha', 3);

SELECT * FROM DEARTMENTLOC

INSERT INTO PROJECT (PNUMBER, PNAME, LOCATION, CITY, DNUM)
VALUES 
    (102, 'Smart City Initiative', 'Tech Park', 'Salalah', 2),
    (103, 'Oil Pipeline Analysis', 'Field Zone 7', 'Duqm', 3);

SELECT * FROM PROJECT

INSERT INTO WORKON (SSN, PNUMBER, WORKINGHOUR)
VALUES 
    ('123456789', 102, '08:00:00'),
    ('234567890', 102, '11:00:00'),
    ('345678901', 103, '07:00:00');

SELECT * FROM WORKON
