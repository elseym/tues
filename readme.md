TuEs
----
Install sqlite3 
Export sqlite db to dump.sql
sqlite3 db/tues.db > db/dump.sql

Import sqlite db from dump.sql
sqlite3 db/tues.db < db/dump.sql

Run rspec
rspec spec/<file>
rspec spec/*

Run features
cucumber features


Run TuEs
ruby lib/TuEs.rb <list, add> <todo>
