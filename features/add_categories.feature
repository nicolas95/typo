Feature: Add Categories
  As an author
  I want to add a category to an article

  Scenario: Admin page shown
    Given the blog is set up
    Given I am on the admin dashboard page
    Then I am logged into the admin panel
    Then I should see "Categories"
    When I go to the new categories page