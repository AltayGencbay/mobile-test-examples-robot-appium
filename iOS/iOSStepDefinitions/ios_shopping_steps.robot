*** Settings ***
Resource    ../iOSLocators/ios_shopping_locators.robot
Library     AppiumLibrary

*** Keywords ***
Open iOS App
    Open Application    http://localhost:4723
    ...    platformName=iOS
    ...    automationName=XCUITest
    ...    deviceName=iPhone 14 Pro
    ...    platformVersion=18.6
    ...    app=/Users/altaygencbay/Desktop/MOBILE/APKs/My Demo App.app
    ...    newCommandTimeout=300
    ...    noReset=${False}

Click Cart Button
    Click Element    ${CART_BUTTON} 

Verify No Items Page and Go Shopping Button Is Visible
    Page Should Contain Text    No Items
    Page Should Contain Text    Oh no! Your cart is empty. Fill it up with swag to complete your purchase.
    Page Should Contain Element    ${GO_SHOPPING_BUTTON}  

Click Go Shopping Button
    Click Element    ${GO_SHOPPING_BUTTON} 

Verify Products Page Is Visible
    Page Should Contain Element    ${PRODUCTS_PAGE_TITLE}

Click to a Product
    Click Element    ${PRODUCT_BUTTON}

Verify Add to Cart Button Is Visible
    Page Should Contain Element    ${ADD_TO_CART_BUTTON}

Click Add to Cart Button
    Click Element    ${ADD_TO_CART_BUTTON}

Verify Product is on My Cart Page and Proceed To Checkout Button Is Visible
    Page Should Contain Element    ${PRODUCT_NAME_MY_CART}
    Page Should Contain Element    ${PROCEED_BUTTON} 

Click Proceed to Checkout Button
    Click Element    ${PROCEED_BUTTON}

Verify Login Page Is Visible
    Page Should Contain Element    ${LOGIN_PAGE}