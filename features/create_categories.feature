
Feature: Create categories
  As an blog administrator
  In order to share my thoughts to the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
   Scenario: Successfully Create categories
    Given I am on the new categories page
    When I fill in "category_name" with "movies"
    And I fill in "category_keywords" with "thriller"
    And I fill in "category_permalink" with "yes"
    And I fill in "category_description" with "Movie which caters to all age groups"
    And I press "Save"
    Then I should see "movie"
    Then I should see "thriller"
    Then I should see "yes"
    Then I should see "Movie which caters to all age groups"
     Then I follow "movie"
    When I fill in "category_name" with "movies"
    And I fill in "category_keywords" with "romantic"
    And I fill in "category_permalink" with "romantic movie"
    And I fill in "category_description" with "A romantic movie set in 1900s"
    And I press "Save"
    Then I should see "movies"
    Then I should see "romantic"
    Then I should see "romantic movie"
    Then I should see "A romantic movie set in 1900s"
