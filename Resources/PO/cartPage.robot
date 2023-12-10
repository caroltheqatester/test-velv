*** Settings ***
Library                                          SeleniumLibrary

*** Variables ***
${CART_MENU}                                     i.fa.fa-shopping-cart
${SHOPPING_CART_TEXT}                            Shopping Cart


*** Keywords ***
When I click on the 'Cart' button
    Click Element                                css=${CART_MENU}
    Wait Until Page Contains                     text=${SHOPPING_CART_TEXT}

Then I should verify that the products are visible in the Cart
    Page Should Contain                          text=Men Tshirt
    Page Should Contain                          text=Blue Top