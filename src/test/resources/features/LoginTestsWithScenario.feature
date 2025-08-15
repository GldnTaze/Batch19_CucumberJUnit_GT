Feature: Login tests with with scenario outline


  Scenario Outline: Positive Login Test
    Given The user is on the login page
    When The user logins with "<email>" and "<password>"
    Then The user should be able to see "<username>" on dashboard page
    Examples:
      | email                   | password   | username |
      | vildansenih@gmail.com   | Senih.1453 | gulden   |
      | rosa@test.com           | Test123456 | Rosa        |
      | user33@test.com         | Test123456 | User33      |
      | mgezer@gmail.com        | Mg12345678 | Melih Gezer |
      | leeroyjenkins@email.com | 1234.Asdf  | Leeroy      |
      | mike@gmail.com          | mike1234   | mike        |


  Scenario Outline: Negative Login Test
    Given The user is on the login page
    When The user logins with "<email>" and "<password>"
    Then The user should be able to see warning "<message>"
    Examples:
      | email             | password      | message                                  |
      | wrongmail@aaa.com | Senih.1453   | Email address is incorrect. Please check |
      | rosa@test.com     | wrongPassword | Password is incorrect. Please check      |
      |                   | Mg12345678    | Please enter your email.                 |
      | mike@gmail.com    |               | Please enter your password!              |
      |                   |               | Please enter your email.                 |