Feature: start TuEsi

In order to manage my todos
As a user I want to be prompted on start
with a message Put in your code

Scenario: TuEs prompts user
  Given a todo
  When I start TuEs without parameter 
  Then I should be prompted with "Usage <add, list, remove> <string #tag1 #tag2>"

Scenario: TuEs filters hashes
  Given a todo with a hash tag: "buy bread at the #bakery"
  When I filter for hash tags
  Then "bakery" should be filtered from the message

