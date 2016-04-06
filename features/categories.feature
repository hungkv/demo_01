Feature: Access category page
  
  Scenario: User want to go to category from homepage
    Given I visit home page
    When I click button "lesson"
    Then I visit the category page
  
  Scenario: User select a lesson
    Given I visit categories page
    When I click to button "Start"
    Then I visit to lesson page