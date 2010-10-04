Feature: code-breaker starts game

         As a code breaker
         I want to start the game
         So that I can break the code

Scenario: start game
   Given I am not playing yet
   When I start a new game
   Then I should see "Welcome Codebreaker to Codebreaker"
   And I should see "Enter Guess:"
