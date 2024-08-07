
-- create
CREATE TABLE Vorlesungen (
  VorlNr INTEGER PRIMARY KEY,
  Titel TEXT NOT NULL,
  SWS INTEGER NOT NULL
);

-- insert
INSERT INTO Vorlesungen VALUES (0001, 'Math', 1);
INSERT INTO Vorlesungen VALUES (0002, 'Physics', 2);
INSERT INTO Vorlesungen VALUES (0003, 'Chemistry', 3);
INSERT INTO Vorlesungen VALUES (0004, 'Biology', 4);
INSERT INTO Vorlesungen VALUES (0005, 'History', 1);
INSERT INTO Vorlesungen VALUES (0006, 'Geography', 2);
INSERT INTO Vorlesungen VALUES (0007, 'English', 3);
INSERT INTO Vorlesungen VALUES (0008, 'Literature', 4);
INSERT INTO Vorlesungen VALUES (0009, 'Philosophy', 1);
INSERT INTO Vorlesungen VALUES (0010, 'Computer Science', 2);
INSERT INTO Vorlesungen VALUES (0011, 'Art', 3);
INSERT INTO Vorlesungen VALUES (0012, 'Music', 4);
INSERT INTO Vorlesungen VALUES (0013, 'Economics', 1);
INSERT INTO Vorlesungen VALUES (0014, 'Political Science', 2);
INSERT INTO Vorlesungen VALUES (0015, 'Psychology', 3);
INSERT INTO Vorlesungen VALUES (0016, 'Sociology', 4);
INSERT INTO Vorlesungen VALUES (0017, 'Law', 1);
INSERT INTO Vorlesungen VALUES (0018, 'Medicine', 2);
INSERT INTO Vorlesungen VALUES (0019, 'Engineering', 3);
INSERT INTO Vorlesungen VALUES (0020, 'Statistics', 4);
INSERT INTO Vorlesungen VALUES (0021, 'Astronomy', 1);
INSERT INTO Vorlesungen VALUES (0022, 'Anthropology', 2);
INSERT INTO Vorlesungen VALUES (0023, 'Linguistics', 3);
INSERT INTO Vorlesungen VALUES (0024, 'Environmental Science', 4);
INSERT INTO Vorlesungen VALUES (0025, 'Architecture', 1);


-- create
CREATE TABLE prufen (
  MatrNr INTEGER NOT NULL,
  VorlNr INTEGER NOT NULL,
  Versuch INTEGER NOT NULL,
  ProfNr INTEGER NOT NULL,
  Note float NOT NULL,
  primary key (MatrNr, VorlNr, Versuch)
);

INSERT INTO prufen VALUES (0001, 001, 1, 200, 1.2);
INSERT INTO prufen VALUES (0002, 002, 2, 210, 1.5);
INSERT INTO prufen VALUES (0003, 003, 3, 220, 1.7);
INSERT INTO prufen VALUES (0004, 004, 4, 230, 1.8);
INSERT INTO prufen VALUES (0005, 005, 5, 240, 2.0);
INSERT INTO prufen VALUES (0006, 006, 6, 250, 2.1);
INSERT INTO prufen VALUES (0007, 007, 7, 260, 2.2);
INSERT INTO prufen VALUES (0009, 009, 9, 280, 2.4);
INSERT INTO prufen VALUES (0010, 010, 10, 290, 2.5);
INSERT INTO prufen VALUES (0011, 011, 11, 300, 2.6);
INSERT INTO prufen VALUES (0012, 012, 12, 310, 2.7);
INSERT INTO prufen VALUES (0013, 013, 13, 320, 2.8);
INSERT INTO prufen VALUES (0014, 014, 14, 330, 2.9);
INSERT INTO prufen VALUES (0015, 015, 15, 340, 3.0);
INSERT INTO prufen VALUES (0016, 016, 16, 350, 3.1);
INSERT INTO prufen VALUES (0017, 017, 17, 360, 3.2);
INSERT INTO prufen VALUES (0018, 018, 18, 370, 3.3);
INSERT INTO prufen VALUES (0019, 019, 19, 380, 3.4);
INSERT INTO prufen VALUES (0020, 020, 20, 390, 3.5);
INSERT INTO prufen VALUES (0021, 021, 21, 400, 3.6);
INSERT INTO prufen VALUES (0022, 022, 22, 410, 3.7);
INSERT INTO prufen VALUES (0023, 023, 23, 420, 3.8);
INSERT INTO prufen VALUES (0024, 024, 24, 430, 3.9);
INSERT INTO prufen VALUES (0025, 025, 25, 440, 4.0);

-- fetch 
SELECT v1.Titel, COUNT(p1.Versuch)
FROM Vorlesungen v1 
LEFT JOIN (
    SELECT p.VorlNr, p.Versuch
    FROM prufen p
    WHERE p.Versuch >= 2
    ) AS p1
USING (VorlNr)
GROUP BY v1.Titel;
