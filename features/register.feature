Feature: Register Page

Scenario: Not already account
    Given I am on the homepage
    When I click button Sign up
    And I fill my credential
    And I check permission
    Then I should be create account