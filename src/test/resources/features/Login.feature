@Login
Feature: Login to Buggy Cars Rating

  Scenario Outline: Login as a valid user
    Given I'm in Buggy Cars Rating home page
    When I enter User Name "<UserName>" and Password "<Password>"
    Then I should be able to login to the system with greeting "<Greeting>"

    Examples:
      | UserName    | Password   | Greeting |
      | BCR21040908 | BCR123^bcr | fName    |

    @Negative
  Scenario Outline: Login as an invalid user
    Given I'm in Buggy Cars Rating home page
    When I enter User Name "<UserName>" and Password "<Password>"
    Then I should get an error message "<Error Message>"

    Examples:
      | UserName   | Password   | Error Message             |
      | BCR2104090 | BCR123^bcr | Invalid username/password |