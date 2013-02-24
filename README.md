TuEs
----
Install sqlite3 
Export sqlite db to dump.sql
sqlite3 db/tues.db > db/dump.sql

Import sqlite db from dump.sql
sqlite3 db/tues.db < db/dump.sql

Run rspec
rspec spec/<file>

Run features
cucumber features
