# language: en

@step_definitions_test
Feature: Step Definitions - Integration Tests

  Scenario: Test Step Definitions
    Given I am on Demo Web App
    And I delete cookies
    And I should see the title page "Test Pag"
    When I should see the element "Search"
    And I fill in "Test" with "Search"
    And I should see the text "Test" on "name: searchinput"
    When I click on "xpath: //input[@value='send']"
    And I should see the text "I will be gone in a second"
    When I clean "name: a"
    And I click "name: checkbox" on the checkbox
    When I should see "name: selectbox" visible
    And I select the option number 1 in the combobox "name: selectbox"
    And I select the option "dos" in the combobox "name: selectbox2"
    And I submit the form "xpath: //input[@value='send']"
    And I wait for 6 seconds
    Then I take the screenshot