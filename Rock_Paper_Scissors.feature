Feature: Playing a Game of Rock Paper Scissors



Scenario Outline: winning

  Given the user enters <player>
  And the computer selects <computer>
  Then <outcome> should be displayed

  Examples:
    | player | computer | outcome   |
    | r      | s        | you win!  |
    | p      | r        | you win!  |
    | s      | p        | you win!  |
    | s      | r        | you lost! |
    | r      | p        | you lost! |
    | p      | s        | you lost! |
    | r      | r        | you Tie!  |
    | p      | p        | you Tie!  |
    | s      | s        | you Tie!  |