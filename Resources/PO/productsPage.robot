*** Settings ***
Library                                          SeleniumLibrary

*** Variables ***
${PRODUCTS_MENU}                                 a .material-icons.card_travel
${CATEGORY}                                      h2.title.text-center
${SEARCH_BAR}                                    input#search_product
${SEARCH_BUTTON}                                 button#submit_search
${PRODUCT_TEXT}                                  div.productinfo>p


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

    