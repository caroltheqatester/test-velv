*** Settings ***
Library                                  SeleniumLibrary

*** Variables ***
${BROWSER}                    chrome
${URL}                        https://automationexercise.com/
${PRODUCTS_MENU}              a .material-icons.card_travel
${CATEGORY}                   h2.title.text-center

*** Keywords ***
Open the browser
    Open Browser                         browser=${BROWSER}        options=add_experimental_option("detach", True)
    Maximize Browser Window
    Go To                                url=${URL}   
    Click Element                        css=${PRODUCTS_MENU}
    Wait Until Element Is Visible        css=${CATEGORY}

Close the browser
    Capture Page Screenshot
    Close Browser