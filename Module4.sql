-- Q1

CREATE TABLE Location (
Place_id INT primary key,
City varchar(50),
Country varchar(50)
);
CREATE TABLE Client (
Client_id INT,
Client_name varchar(50),
  Place_id INT,
    CONSTRAINT client_pk PRIMARY KEY (Client_id),
    CONSTRAINT place_fk FOREIGN KEY (Place_id)
        REFERENCES Location (Place_id)
);
CREATE TABLE Contractor (
Contractor_id INT,
First_name varchar(50),
Last_name varchar(50),
Client_id INT,
    CONSTRAINT contractor_pk PRIMARY KEY (Contractor_id),
    CONSTRAINT client_fk FOREIGN KEY (Client_id)
        REFERENCES Client (Client_id)
);

INSERT INTO Location
VALUES (1, "London", "UK"),
(2, "New York", "USA"),
(3, "Paris", "France"),
(4, "Tokyo", "Japan")
;
INSERT INTO Client
VALUES (1, "BA", 1),
(2, "EDF", 3),
(3, "Google", 2),
(4, "IBM", 2),
(5, "Tesco", 1),
(6, "Toyota", 4)
;
INSERT INTO Contractor
VALUES (1, "Andrew", "Wallace", 4),
(2, "Andre", "Sinclair", 3),
(3, "John", "Smith", 1),
(4, "Parker", "Hamilton", 2),
(5, "James", "Washington", 3),
(6, "Paul", "Piper", 2)
;

-- Q2

UPDATE Client
SET 
    Place_id = 2
WHERE
  Client_id = 6;
  
  -- Q3
  
DELETE FROM Contractor
WHERE
  Client_id = 2;

DELETE FROM Client
WHERE
  Client_id = 2;