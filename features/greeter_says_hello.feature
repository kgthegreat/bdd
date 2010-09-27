Feature: greeter says hello

  In order to start learning,
  I want a greeter to say hello

Scenario: greeter says Hello
  Given a greeter
  When I send the greet() message
  Then I should say "Hello Cucumber"
