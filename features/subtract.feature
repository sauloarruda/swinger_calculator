Feature: Subtract

  Scenario: Subtract two numbers
    Given the frame "Calculator" is visible
    When I click the button "4"
      And I click the button "-"
      And I click the button "2"
      And I click the button "="
    Then the label "2.0" should be "2.0"