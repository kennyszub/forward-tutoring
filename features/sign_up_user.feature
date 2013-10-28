    Feature: Allow student sign up
    
    As a student
    So that I can use the site
    I want to sign up for an account

    Scenario: 
    When I press "Sign Up!"
    Then I should see "Username:"

    Scenario:
    When I press "Sign Up!"
    And I fill in "Email" with "test123"
    Then I should see "Email is invalid"
