require_relative 'Dat'

class Todo
  
  def start
    return "Usage <add, list, remove> <string #tag1 #tag2>"
  end

  def add(text)
    puts "add new todo: \""  + text + "\"" 
    data = Dat.new
    data.add(text)
    puts "done"
  end

  def list
    puts "List of todos"
    data = Dat.new
    result = data.findTodos
    result.each do |todo|
      puts todo.join "\s"
    end 
  end
end

arguments = ARGV
todo = Todo.new

if arguments.empty? then
  puts todo.start

else
  command = arguments[0]
  text = arguments[1]

  if command.eql? "add" then
    todo.add(text)
  end

  if command.eql? "list" then
    todo.list
  end
end 
