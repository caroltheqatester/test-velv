*** Settings ***
Documentation        This Suite tests the "automationexercise.com" webiste
Resource             ../Resources/products_resources.robot
Resource             ../Resources/PO/productsPage.robot
Test Setup               Open the browser
Test Teardown            Close the browser

*** Test Cases ***
Scenario - Adding Products to the Cart
    [Documentation]        This test validates the functionality of searching and adding items to the cart
    [Tags]                 addingToCart
    Given I am on the 'Products' page
    And I verify that the search bar is visible
    And I enter "Men Tshirt" in the search bar
    And I click on the search button and the item "Men Tshirt" is Visible
    
