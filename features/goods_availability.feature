Feature: Managing goods and its availability

Scenario: Viewing list of products
    Given User is logged in as an admin
    And User is on the admin dashboard
    When User clicks on the "Products" tab
    Then List of products with detauls is displayed

Scenario: Filtering list of products
    Given User is logged in as an admin
    And User is on the "Products" tab
    When User fills in the "Product name" field in the filter
    And User clicks on the "Filter" button
    Then List of products matching the filter is displayed

Scenario: Creating a new product
    Given User is logged in as an admin
    And User is on the "Products" tab
    When User clicks on the "Add New" button
    And User fills in the required product details
    And User clicks on the "Save" button
    Then The product is created

Scenario: Deleting a product
    Given User is logged in as an admin
    And User is on the "Products" tab
    When User checks the checkmark next to the product to be deleted
    And User clicks on the "Delete" button
    Then The product is deleted

Scenario: Updating product details
    Given User is logged in as an admin
    And User is on the "Products" tab
    When User clicks on the "Edit" button next to the product to be updated
    And User changes the product details
    And User clicks on the "Save" button
    Then The product shows the updated details

Scenario: Updating product availability
    Given User is logged in as an admin
    And User is on the "Products" tab
    And Product has some quantity in stock
    When User clicks on the "Edit" button next to the product to be updated
    And User changes the product availability to '0'
    And User clicks on the "Save" button
    Then The product shows the updated availability

