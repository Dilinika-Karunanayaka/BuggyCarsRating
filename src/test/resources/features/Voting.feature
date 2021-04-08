@Vote
Feature: Vote for a Selected Car

  Scenario Outline: Vote for a car with a comment - "<Make>" & "<Model>"
    Given I'm in Overall Rating page
    When I select a car "<Make>" & "<Model>" from the list
    And I vote with a comment "<Comment>"
    Then the vote count should increase by one
    And I should be able to see my vote in the table

    Examples:
      | Make        | Model      | Comment                         |
      | Lamborghini | Diablo     | I like Lamborghini Diablo       |
      | Lamborghini | Murciélago | I like Lamborghini   Murciélago |

  Scenario Outline: Vote for a car without a comment - "<Make>" & "<Model>"
    Given I'm in Overall Rating page
    When I select a car "<Make>" & "<Model>" from the list
    And I vote without a comment
    Then the vote count should increase by one
    And I should be able to see my vote in the table

    Examples:
      | Make        | Model     |
      | Alfa Romeo  | Giulietta |
      | Lamborghini | Diablo    |