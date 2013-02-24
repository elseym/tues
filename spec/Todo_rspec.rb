require 'Todo' 

describe "Todo" do
  it "schould say 'Put in your todo...' when it is called without parameters" do
    todo = Todo.new
    message = todo.start
    message.should == "Usage <add, list, remove> <string #tag1 #tag2>"
  end
end
