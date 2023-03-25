Feature Searching and buying goods

Scenario: Searching for a product (1)
    Given User is on the home page
    When User types a query into the search
    And User presses search
    Then Results page is displayed with relevant product        
    Example: 
        | query  | result       |
        | phone  | iPhone       |
        | canon  | Canon EOS 5D |

Scenario: Browsing products by category (2)
    Given User is on the home page
    When User clicks on a category
    Then Results page is displayed with relevant products
    Example: 
        | Desktops |
        | PC (0)   |
        | Mac (1)  |

Scenario: Opening a product page (3)
    Given User is on the results page
    When User clicks on a product
    Then Corresponding product page is displayed

Scenario: Adding a product to the shopping cart (4)
    Given User is on the product page
    When User clicks on the "Add to cart" button
    Then Product is added to the shopping cart
    And Success message is displayed

Scenario: Adding 0 quantity of a product to the shopping cart (5)
    Given User is on the product page
    And User clicks on the "Add to cart" button
    But Quantity is set to 0
    Then Product is not added to the shopping cart

Scenario: Removing a product from the shopping cart (6)
    Given User is on the shopping cart page
    And Product is in the shopping cart
    When User clicks on the "Remove" button
    Then Product is removed from the shopping cart