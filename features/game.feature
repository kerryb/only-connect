Feature: Play a game
  Scenario: A complete game
    Given a game has started
    Then the category choice should be shown

    When team one pick a category
    Then the first clue should be shown
