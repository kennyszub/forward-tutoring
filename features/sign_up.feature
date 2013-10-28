    Feature: Allow student sign up
    
    As a user 
    So that I can use the site
    I want to sign up for an account

    Scenario: 
    When I go to the home page
    And I follow "test"
    Then I should see "Username"

    Scenario:
    When I go to the home page
    And I follow "test"
    And I fill in "Email:" with "test123"
    And I press "Signup"
    Then I should see "Email is invalid"
