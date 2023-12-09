*** Settings ***
Library                                          SeleniumLibrary

*** Variables ***
${PRODUCTS_MENU}                                 a .material-icons.card_travel
${CATEGORY}                                      h2.title.text-center
${SEARCH_BAR}                                    input#search_product
${SEARCH_BUTTON}                                 button#submit_search
${PRODUCT_TEXT}                                  div.productinfo>p
${OVERLAY}                                       .product-overlay
${ADD_TO_CART}                                   div.product-overlay div.overlay-content a.btn.add-to-cart
${MESSAGE_MODAL}              h4.modal-title.w-100
${DISMISS_MODAL}              .close-modal

*** Keywords ***
Given I am on the 'Products' Page
    Click Element                                css=${PRODUCTS_MENU}
    Wait Until Element Is Visible                css=${CATEGORY}

And I verify that the search bar is visible
    Element Should Be Visible                    css=${SEARCH_BAR}

And I enter "${ITEM}" in the search bar
    Click Element                                css=${SEARCH_BAR}
    Input Text                                   css=${SEARCH_BAR}                    text=${ITEM}

And I click on the search button and the item "${ITEM}" is visible
    Click Element                                css=${SEARCH_BUTTON}
    Element Text Should Be                       css=${PRODUCT_TEXT}                  ${ITEM}

 And I add the product to the cart
    Scroll Element Into View                     css=${OVERLAY}
    Wait Until Element Is Enabled                css=${ADD_TO_CART}                   timeout=10s
    Click Element                                css=${ADD_TO_CART}
    Wait Until Element Is Visible                css=${MESSAGE_MODAL}
    Click Element                                css=${DISMISS_MODAL}

And I add a second item to the cart
    And I verify that the search bar is visible
    And I enter "Blue Top" in the search bar
    And I click on the search button and the item "Blue Top" is Visible
    And I add the product to the cart