Feature: Add new word to the application

  @javascript
  Scenario: User can add a word

  Given User is at home page
  When  User clicks on add word
  Then User fills the word details
  And User clicks the submit form
  Then User should be able to see new word in index