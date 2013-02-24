Given /^a todo$/ do
  @todo = Todo.new
end

When /^I start TuEs without parameter$/ do
   @message = @todo.start
end

Then /^I should be prompted with "(.*?)"$/ do |prompt|
   @message.should == prompt
end

