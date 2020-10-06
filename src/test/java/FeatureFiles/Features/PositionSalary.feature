Feature: Position Salary functionality

  Background:
    Given Navigate to basqar
    When Enter the username and password and click on login button
    Then User should login successfully

  @PositionsSalary
  Scenario Outline: Create Position Salary
    Given Click in the leftnav class
      | HumanResources      |
      | HumanResourcesSetup |
      | PositionSalary      |
    Then Click on element inside dialog content
      | AddButton |
    And Fill out fields
      | Name | <Position Salary Name> |
    Then Click on element inside dialog content
      | SaveButton |
    Then Success message should be displayed
    Examples:
      | Position Salary Name |
      | QA Tester            |

  @PositionsSalary
  Scenario Outline: Edit Position Salary
    Given Click in the leftnav class
      | HumanResources      |
      | HumanResourcesSetup |
      | PositionSalary      |
    And Delete or Edit Function
      | <Position Salary Name> | edit |
    And Fill out fields
      | Name | <Position Salary Name Edited> |
    Then Click on element inside dialog content
      | SaveButton |
    Then Success message should be displayed
    Examples:
      | Position Salary Name | Position Salary Name Edited |
      | QA Tester            | QA Engineer                 |

  @PositionsSalary
  Scenario Outline: Delete Position Salary
    Given Click in the leftnav class
      | HumanResources      |
      | HumanResourcesSetup |
      | PositionSalary      |
    And Delete or Edit Function
      | <Position Salary Name Edited> | delete |
    Then Click on element inside dialog content
      | yesButton |
    Then Success message should be displayed
    Examples:
      | Position Salary Name Edited |
      | QA Engineer                 |