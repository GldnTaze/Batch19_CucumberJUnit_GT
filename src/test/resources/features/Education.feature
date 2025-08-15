Feature: Experience Tests


  Scenario: Add Education Form Labels Check
    Given  The user is on the login page
    When The user logins with "vildansenih@gmail.com" and "Senih.1453"
    Then The user should be able to see "gulden" on dashboard page
    When The user clicks on tab: "gulden" and module: "My Profile"
    Then The user should be able to see related page title with two parts: "User Profile"
    When The user navigates user profile tab menu with: "Add Education"
    Then The user should be able to verify add education form labels with following list
      | School or Bootcamp *    |
      | Degree or Certificate * |
      | Study                   |
      | From Date               |
      | To Date                 |
      | Program Description     |


  @wip
  Scenario Outline: Filling Education Form For Differents
    Given  The user is on the login page
    When The user logins with "<email>" and "<password>"
    Then The user should be able to see "<username>" on dashboard page
    When The user clicks on tab: "<username>" and module: "My Profile"
    Then The user should be able to see related page title with two parts: "User Profile"
    When The user navigates user profile tab menu with: "Add Education"
    Then The user verifies that add education page is displayed
    When The user fills the education form with "<schoolName>" and "<degree>" and "<study>" and "<fromDate>" and "<toDate>" and "<desc>"
    Then The user should be able to verify added education record with "<schoolName>"
    Then The user should be able to delete last added education record with "<schoolName>"
    Examples:
      | email | password | username | schoolName | degree | study | fromDate | toDate | desc |
      |  vildansenih@gmail.com| Senih.1453 | gulden | ODTÜ | Bachelor | Public Finace | 11112011 | 12122014 | desc |
      | rosa@test.com           | Test123456 | Rosa        | Ankara Uni  | Master   | Architecture         | 11112020 | 12122024 | Nice Program      |
      | leeroyjenkins@email.com | 1234.Asdf  | Leeroy      | Bilkent     | PG       | Medicine             | 11112011 | 12122014 | Good Program      |
      | mgezer@gmail.com        | Mg12345678 | Melih Gezer | Koc Uni     | Doctor   | Software Engineering | 11112011 | 12122014 | Very good Program |
      | user33@test.com         | Test123456 | User33      | Galatasaray | Licence  | Preschool Teacher    | 11112011 | 12122014 | Sweet Program     |




