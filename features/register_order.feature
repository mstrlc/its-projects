Feature User accounts and orders

Scenario: Logging in
    Given User is not logged in
    And User is on the home page
    When User clicks on the "Login" link 
    And User enters valid credentials
    And User clicks on the "Login" button
    Then "My Account" page is displayed
    And User is logged in

Scenario: Logging out
    Given User is logged in
    When User clicks on the "Logout" link
    Then "Account Logout" message is displayed
    And User is logged out

Scenario: Checking the order history
    Given User is logged in
    And User has placed an order before
    When User clicks on the "My Orders" link
    And User clicks on the "Order History" link
    Then User's order history is displayed

Scenario: Checking the order details
    Given User is logged in
    And User has placed an order
    When User clicks on the "Order History" link
    And User clicks on the "View" button
    Then User's order details are displayed

Scenario: Adding product to the cart
  Given User is on the product details page
  When User clicks on the "Add to Cart" button
  Then Success message is displayed and the cart contains 1 item

Scenario: Removing product from the cart
  Given User is on the shopping cart page
  And The cart contains 1 item
  When User clicks on the "Remove" button
  Then The shopping cart is empty

Scenario: Checking out items in the cart as a registered user
  Given User is logged in
  And User is on the shopping cart page
  And The cart contains some items
  When User clicks on the "Checkout" button
  And User has filled out the billing and shipping information
  When User clicks on the "Confirm order" button
  Then Success message "Your order has been placed!" is displayed
