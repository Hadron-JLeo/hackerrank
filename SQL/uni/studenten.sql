
-- create
CREATE TABLE Studenten (
  MatrNr INTEGER PRIMARY KEY,
  Name TEXT NOT NULL,
  Semesterzahl INTEGER NOT NULL
);

-- insert
INSERT INTO Studenten VALUES (0001, 'Clark', 1);
INSERT INTO Studenten VALUES (0002, 'Dave', 1);
INSERT INTO Studenten VALUES (0003, 'Noemi', 2);
INSERT INTO Studenten VALUES (0004, 'David', 2);
INSERT INTO Studenten VALUES (0005, 'Leo', 2);
INSERT INTO Studenten VALUES (0006, 'Klara', 4);

INSERT INTO Studenten VALUES (0007, 'Sophia', 3);
INSERT INTO Studenten VALUES (0008, 'Liam', 1);
INSERT INTO Studenten VALUES (0009, 'Emma', 3);
INSERT INTO Studenten VALUES (0010, 'Mason', 2);
INSERT INTO Studenten VALUES (0011, 'Isabella', 4);
INSERT INTO Studenten VALUES (0012, 'James', 1);
INSERT INTO Studenten VALUES (0013, 'Ava', 2);
INSERT INTO Studenten VALUES (0014, 'Lucas', 3);
INSERT INTO Studenten VALUES (0015, 'Mia', 4);
INSERT INTO Studenten VALUES (0016, 'Oliver', 3);
INSERT INTO Studenten VALUES (0017, 'Charlotte', 1);
INSERT INTO Studenten VALUES (0018, 'Ethan', 2);
INSERT INTO Studenten VALUES (0019, 'Amelia', 4);
INSERT INTO Studenten VALUES (0020, 'Benjamin', 3);
INSERT INTO Studenten VALUES (0021, 'Evelyn', 1);
INSERT INTO Studenten VALUES (0022, 'Alexander', 2);
INSERT INTO Studenten VALUES (0023, 'Harper', 4);
INSERT INTO Studenten VALUES (0024, 'Michael', 3);
INSERT INTO Studenten VALUES (0025, 'Luna', 2);

-- fetch 
SELECT Semesterzahl, COUNT(Semesterzahl) AS Anzahl
FROM Studenten
GROUP BY Semesterzahl
ORDER BY Semesterzahl ASC

