CREATE TABLE Pokemon
(
    ID INT PRIMARY KEY NOT NULL,
    _Name NVARCHAR (50) NOT NULL,
    Height VARCHAR (1000) NOT NULL,
    _Weight VARCHAR (1000) NOT NULL
)

CREATE TABLE _Type
(
    ID INT PRIMARY KEY NOT NULL,
    _Name NVARCHAR (50) NOT NULL
)

CREATE TABLE Pokemon_Type
(
    ID INT PRIMARY KEY NOT NULL,
    Pokemon_ID INT FOREIGN KEY REFERENCES Pokemon NOT NULL,
    Type_ID INT FOREIGN KEY REFERENCES _Type NOT NULL,
)

INSERT INTO Pokemon
    (ID, _Name, Height, _Weight)
VALUES
    (1, 'Bulbasaur', 7, 70),
    (2, 'Ditto', 3, 40);

INSERT INTO _Type
    (ID, _Name)
VALUES
    (1, Grass),
    (2, Normal);

INSERT INTO Pokemon_Type
VALUES (Pokemon_ID, Type_ID)
INNER JOIN _Type
(ID, _Name);

SELECT * FROM Pokemon