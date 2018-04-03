Feature: Create and Edit Categories
  As a blog administrator
  In order to organize my blog
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add category
    Given I am on the categories page
    Then I should see "Categories"
    When I fill in "Name" with "Test Category"
    And I fill in "Permalink" with "test"
    And I press "Save"
    Then I should see "Test Category"
    And I should see "test"
    And the "Name" field should not contain "Test Category"
    And the "Permalink" field should not contain "test"

  Scenario: Successfully edit category
    Given I am on the categories page
    Then I should see "General"
    And I should see "general"
    When I follow "Edit"
    Then the "Name" field should contain "General"
    And the "Permalink" field should contain "general"
    When I fill in "Permalink" with "gen"
    And I press "Save"
    Then the "Permalink" field should not contain "gen"
    And I should see "gen"
    And I should not see "general"
