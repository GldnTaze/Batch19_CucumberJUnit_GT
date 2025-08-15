@regression
Feature: Dashboard Tests

  @smoke
  Scenario: Developers Page Test
    Given The user is on the login page
    When The user enters gulden's credentials
    Then The user should be able to see dashboard page
    When The user clicks on Developers link
    Then The user should be able to see developers page title



  Scenario: Developers Page Test - Cucumber Parameters
    Given The user is on the login page
    When The user logins with "vildansenih@gmail.com" and "Senih.1453"
    Then The user should be able to see "gulden" on dashboard page
    When The user clicks on tab: "Developers" and module: ""
    Then The user should be able to see related page title with two parts: "Developers"


    Scenario: Dashboard Tabs Check
      Given The user is on the login page
      When The user logins with "vildansenih@gmail.com" and "Senih.1453"
      Then The user should be able to see "gulden" on dashboard page
      And The user should verify the dashboard tabswith follows
      |Dashboard|
      |Developers|
      |Components|
      |Forms|
      |JavaScript|
      |gulden|
