require_relative 'Dat'
require_relative 'Filter'
require '/home/micha/Projects/TuEs/model/Tag.rb'

require '/home/micha/Projects/TuEs/model/Todo.rb'

require 'sqlite3'
require 'active_record'


db = "/home/micha/Projects/TuEs/db/tues.db"

ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => db  
)


class Tues
  
  def start
    return "Usage <add, list, remove> <string #tag1 #tag2>"
  end

  def add(text, hashes)
    puts "add new todo: \""  + text + "\"" 
    todo = Todo.new
    todo.description = text

    if !hashes.empty? then
      hashes.each do |hash|
        tag = Tag.new
        tag.name = hash
        todo.tags << tag
      end
    end

    todo.save
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

  def add_hash(hashes)
    hashes.each do |hash|
      puts 'save hash: ' + hash
      id = TuesHash.add_hash(hash)
      puts 'saved new hash with id: ' + id.to_s
    end
  end
end

arguments = ARGV
tues = Tues.new

if arguments.empty? then
  puts todo.start

else
  command = arguments[0]
  text = arguments[1]
  filter = Filter.new(text)
  hashes = filter.getHashes

  if command.eql? "add" then
    tues.add(text, hashes)
  end

  if command.eql? "list" then
    tues.list
  end
end 
