PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE todo (id INTEGER PRIMARY KEY AUTOINCREMENT, description TEXT);
INSERT INTO "todo" VALUES(1,'Butter kaufen');
INSERT INTO "todo" VALUES(2,'Milch kaufen');
INSERT INTO "todo" VALUES(3,'An TuEs arbeiten');
INSERT INTO "todo" VALUES(4,'TuEs committen');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('todo',4);
COMMIT;
