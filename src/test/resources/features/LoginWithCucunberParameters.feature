@regression
Feature: Login Tests with Cucumber Parameters

  Background:
    Given The user is on the login page

  @smoke
  Scenario: Login as gulden - Cucumber Parameters
  #  Given The user is on the login page
    When The user logins with "vildansenih@gmail.com" and "Senih.1453"
    Then The user should be able to see "gulden" on dashboard page


  Scenario: Login as Rosa - Cucumber Parameters
 #  Given The user is on the login page
    When The user logins with "rosa@test.com" and "Test123456"
    Then The user should be able to see "Rosa" on dashboard page

  Scenario: Login as Leeroy - Cucumber Parameters
  #  Given The user is on the login page
    When The user logins with "leeroyjenkins@email.com" and "1234.Asdf"
    * The user should be able to see "Leeroy" on dashboard page


  Scenario: Login as mike - Cucumber Parameters
  #  Given The user is on the login page
    When The user logins with "mike@gmail.com" and "mike1234"
    Then The user should be able to see "mike" on dashboard page
    And The number is 46
    And The number also is 5.56
    And The number can be 12.7

  Scenario: Login as Mansimmo - Cucumber Parameters
    When The user logins with "Ramanzi@test.com" and "Test123456"
    Then The user should be able to see "Mansimmo" on dashboard page

  Scenario: Login with credentials list
    When The user login and verify with followig credentials
      | Ramanzi@test.com |
      | Test123456       |
      | Mansimmo         |


  Scenario: Login with credentials list rosa
    When The user login and verify with followig credentials
      | rosa@test.com |
      | Test123456    |
      | Rosa          |


  Scenario: Login with credentials list rosa
    When The user login and verify with followig credentials map
      | user_email | rosa@test.com |
      | password   | Test123456    |
      | user_name  | Rosa          |


  Scenario: Login with credentials list Mansimmo
    When The user login and verify with followig credentials map
      | user_email | Ramanzi@test.com |
      | password   | Test123456       |
      | user_name  | Mansimmo         |
