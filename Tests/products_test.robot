*** Settings ***
Documentation        This Suite tests the "automationexercise.com" webiste
Resource             ../Resources/products_resources.robot
Test Setup               Open the browser
Test Teardown            Close the browser

*** Test Cases ***
Scenario - Adding Products to the Cart
    [Documentation]        This test validates the functionality of searching and adding items to the cart
    [Tags]                 addingToCart
    