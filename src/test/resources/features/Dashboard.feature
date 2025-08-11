@regression
Feature: Dashboard Tests

  Scenario: Developers Page Test
    Given The user is on the login page
    When The user is on the login page
    Then The user enters gulden's credentials
    When The user clicks on Developers link
    Then The user schould be able to see developers page title


    @wip
  Scenario: Developers Page Test -Cucumber Parameters
    Given The user is on the login page
    When The user logins with "vildansenih@gmail.com" and "Senih.1453"
