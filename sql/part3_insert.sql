

INSERT INTO wall(description) VALUES ('John');
INSERT INTO wall(description) VALUES ('spidey');
INSERT INTO wall(description) VALUES ('Potus');
INSERT INTO wall(description) VALUES ('OB');
INSERT INTO wall(description) VALUES ('lio');

INSERT INTO creator VALUES ('John', 1);
INSERT INTO creator VALUES ('spidey', 2);
INSERT INTO creator VALUES ('Potus', 3);
INSERT INTO creator VALUES ('OB', 4);
INSERT INTO creator VALUES ('lio', 5);

INSERT INTO usert VALUES ('John','johnny','john.doe@mail.mcgill.ca','John','Doe','M','12-1-1990');
INSERT INTO usert VALUES ('spidey','mary','mary.jane@mail.mcgill.ca','Mary','Jane','F','4-20-1995');
INSERT INTO usert VALUES ('Potus','realDonaldTrump','donald.trump@mail.mcgill.ca','Donald','Trump','M','3-3-1950');
INSERT INTO usert VALUES ('OB','Obama','barack.obama@mail.mcgill.ca','Barack','Obama','M','8-6-1960');
INSERT INTO usert VALUES ('lio','messi','lionel.messi@mail.mcgill.ca','Lionel','Messi','M','10-1-1987');

SELECT * FROM usert;
