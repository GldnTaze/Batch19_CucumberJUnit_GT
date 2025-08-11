
Feature: Login Tests with Cucumber Parameters


  Scenario: Login as gulden - Cucumber Parameters
    Given The user is on the login page
    When The user logins with "vildansenih@gmail.com" and "Senih.1453"
    Then The user should be able to see "gulden" on dashboard page
