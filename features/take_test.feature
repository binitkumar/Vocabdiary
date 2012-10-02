Feature: Take Vocab test

  @javascript
  Scenario: User can appear in the vocabulary test
    Given User is at home page
    And These is less then 4 words
    When  User clicks on take test
    Then User should see the message that less number of words available
    Then User creates 4 words
    Then User is at home page
    When User clicks on take test
    Then User should see word and options