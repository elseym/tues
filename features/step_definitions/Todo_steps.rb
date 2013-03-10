require 'Filter'

Given /^a todo$/ do
  @todo = Todo.new
end

When /^I start TuEs without parameter$/ do
   @message = @todo.start
end

Then /^I should be prompted with "(.*?)"$/ do |prompt|
   @message.should == prompt
end

Given /^a todo with a hash tag: "(.*?)"$/ do |arg1|
  @filter = Filter.new(arg1)
end

When /^I filter for hash tags$/ do
  @hashes = @filter.getHashes
end

Then /^"(.*?)" should be filtered from the message$/ do |arg1|
  @hashes[0].equal?(arg1)
end

