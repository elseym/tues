Feature: start TuEsi

In order to manage my todos
As a user I want to be prompted on start
with a message Put in your code

Scenario: TuEs prompts user
  Given a todo
  When I start TuEs without parameter 
  Then I should be prompted with "Usage <add, list, remove> <string #tag1 #tag2>"

