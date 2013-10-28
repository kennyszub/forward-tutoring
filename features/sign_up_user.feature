    Feature: Allow student sign up
    
    As a student
    So that I can use the site
    I want to sign up for an account

    Scenario: see if signup is available 
    When I go to the homepage
    And I press "signUpBtn"
    Then I should see "Username:"

