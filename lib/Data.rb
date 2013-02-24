#!/usr/bin/ruby
require 'sqlite3'

begin
    
    db = SQLite3::Database.open "../db/tues.db"

    stm = db.prepare "SELECT * FROM todo" 
    rs = stm.execute 
    
    rs.each do |row|
        puts row.join "\s"
    end
    
ensure
    stm.close if stm
    db.close if db
end
