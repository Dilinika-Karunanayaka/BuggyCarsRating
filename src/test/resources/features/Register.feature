@Register
Feature: Register with Buggy Cars Rating

  Scenario Outline: Register with valid user information
    Given I'm in Register page
    When I submit Login "<Login>", First Name "<First Name>", Last Name "<Last Name>", Password "<Password>"
    Then I should be see success message "Registration is successful"

    Examples:
      | Login      | First Name | Last Name | Password   |
      | BCR-RANDOM | fName      | lName     | BCR123^bcr |

  @Negative
  Scenario Outline: Register with duplicate user information
    Given I'm in Register page
    When I submit Login "<Login>", First Name "<First Name>", Last Name "<Last Name>", Password "<Password>"
    Then I should be see error message "UsernameExistsException: User already exists"

    Examples:
      | Login | First Name | Last Name | Password   |
      | BCR1  | fName      | lName     | BCR123^bcr |