    Feature: Allow user to log in
    
    As a user of the site
    So that I can access the different pages on the site
    I want to log into my account

    Scenario: 
    When I go to the home page
    And I fill in "Email" with "test@gmail.com"
    And I fill in "Password" with "test123"
    And I press "Sign In"
    Then I should see "Welcome"

