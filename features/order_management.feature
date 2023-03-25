Feature: Managing orders

Scenario: Checking placed orders (16)
    Given User is logged in as an admin
    And User is on the admin dashboard
    When User clicks on the "Orders" link
    Then All orders are displayed

Scenario: Viewing order details (17)
    Given User is logged in as an admin
    And User is on the Orders screen
    When User clicks on the "View" button next to a given order
    Then Order details are displayed

Scenario: Changing order status (18)
    Given User is logged in as an admin
    And User is on the Order details
    But Order status is "Pending"
    When User changes "Order status" to "Processed"
    And User clicks on the "Add History" button
    Then Order status is changed to "Processed"

Scenario: Deleting order (19)
    Given User is logged in as an admin
    And User is on the Orders screen
    When User checks the checkmark next to the order to be deleted
    And User clicks on the "Delete" button
    Then Order is deleted

Scenario: Adding an item to order (20)
    Given User is logged in as an admin
    And User is on the Order details
    When User clicks on the "Add Item" button
    And User selects a product from the list
    And User enters quantity
    And User clicks on the "Add Product" button
    Then "Success: You have modified your shopping cart!" message is displayed
    And Product is added to the order