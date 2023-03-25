Feature: User accounts management

Scenario: Viewing customer accounts (27)
    Given User is logged in as an admin
    And User is on the admin dashboard
    And There are registered users
    When User clicks on "Customers" in the sidebar
    Then List of registered users is displayed

Scenario: Viewing customer details (28)
    Given User is logged in as an admin
    And User is on the Customers screen
    When User clicks on the "Edit" link
    Then Customer edit form is displayed

Scenario: Editing customer details (29)
    Given User is logged in as an admin
    And User is on the Customer details screen
    When User changes the customer details
    And User clicks on the "Save" button
    Then Customer details are updated

Scenario: Viewing customer's orders (30)
    Given User is logged in as an admin
    And User is on the Customer details screen
    When User clicks on the "Orders" link
    Then List of customer's orders is displayed

Scenario: Logging in as customer (31)
    Given User is logged in as an admin
    And User is on the Customers screen
    When User clicks on the "Login as user" link
    Then User is logged in as the selected user

Scenario: Deleting customer (32)
    Given User is logged in as an admin
    And User is on the Customers screen
    When User clicks checks the checkmark next to the customer to be deleted
    And User clicks the delete button
    Then Customer is not listed on the Customers screen