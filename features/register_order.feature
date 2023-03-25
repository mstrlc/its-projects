Feature User accounts and orders

Scenario: Register an user accounts (7)
    Given User is not logged in
    And User is on the registration page
    When User fills out the registration form
    And User clicks on the "Continue" button
    Then Success message "Your Account Has Been Created!" is displayed
    And User is logged in

Scenario: Login to an user account (8)
    Given User is not logged in
    And User is on the login page
    When User fills out valid credentials
    And User clicks on the "Login" button
    Then User is logged in

Scenario: Try to login with invalid credentials (9)
    Given User is not logged in
    And User is on the login page
    When User fills out invalid credentials
    And User clicks on the "Login" button
    Then Error message "Warning: No match for E-Mail Address and/or Password." is displayed
    And User is not logged in

Scenario: Logout from an user account (10)
    Given User is logged in
    And User is on the home page
    When User clicks on the "Logout" link in "My Account" section
    Then "Account Logout" page is displayed
    And User is not logged in

Scenario: Checking the order history (11)
    Given User is logged in
    And User has placed an order before
    When User clicks on the "My Orders" link
    And User clicks on the "Order History" link
    Then User's order history is displayed

Scenario: Checking the order details (12)
    Given User is logged in
    And User has placed an order
    When User clicks on the "Order History" link
    And User clicks on the "View" button
    Then User's order details are displayed

Scenario: Adding product to the cart (13)
  Given User is on the product details page
  When User clicks on the "Add to Cart" button
  Then Success message is displayed and the cart contains 1 item

Scenario: Removing product from the cart (14)
  Given User is on the shopping cart page
  And The cart contains 1 item
  When User clicks on the "Remove" button
  Then The shopping cart is empty

Scenario: Checking out items in the cart as a registered user (15)
  Given User is logged in
  And User is on the shopping cart page
  And The cart contains some items
  When User clicks on the "Checkout" button
  And User has filled out the billing and shipping information
  When User clicks on the "Confirm order" button
  Then Success message "Your order has been placed!" is displayed
