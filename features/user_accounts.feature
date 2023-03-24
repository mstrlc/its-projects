Feature: User accounts management

Scenario: Register an user accounts
    Given User is not logged in
    And User is on the registration page
    When User fills out the registration form
    And User clicks on the "Continue" button
    Then Success message "Your Account Has Been Created!" is displayed
    And User is logged in

Scenario: Login to an user account
    Given User is not logged in
    And User is on the login page
    When User fills out valid credentials
    And User clicks on the "Login" button
    Then User is logged in

Scenario: Try to login with invalid credentials
    Given User is not logged in
    And User is on the login page
    When User fills out invalid credentials
    And User clicks on the "Login" button
    Then Error message "Warning: No match for E-Mail Address and/or Password." is displayed
    And User is not logged in

Scenario: Logout from an user account
    Given User is logged in
    And User is on the home page
    When User clicks on the "Logout" link in "My Account" section
    Then "Account Logout" page is displayed
    And User is not logged in