require 'sqlite3'

class Dat
   
  @@db = SQLite3::Database.open "/home/micha/Projects/TuEs/db/tues.db"
  
  def findTodos
  
    begin

      stm = @@db.prepare "SELECT * FROM todo"
      result = stm.execute
      todos = result.map do |row|
	row
      end
    ensure
      stm.close if stm
      @@db.close if @@db
    end

    return todos
    
  end

  def add(todo)
    begin

      @@db.execute("INSERT INTO todo (description) VALUES(?)", todo)
    end
  end
end
