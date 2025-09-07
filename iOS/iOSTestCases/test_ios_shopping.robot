*** Settings ***
Resource    ../iOSStepDefinitions/ios_shopping_steps.robot
Test Teardown    Run Keyword If Test Failed    Capture Page Screenshot

*** Test Cases ***

Shopping-01
    [Documentation]     POSITIVE - User clicks cart button → should see No items text
    Open iOS App
    Click Cart Button
    Verify No Items Page and Go Shopping Button Is Visible
    Close Application

Shopping-02
    [Documentation]     POSITIVE - User clicks go shopping button on no items page → should see products page
    Open iOS App
    Click Cart Button
    Click Go Shopping Button
    Verify Products Page Is Visible
    Close Application

Shopping-03
    [Documentation]     POSITIVE - User clicks to product → should see add to cart button
    Open iOS App
    Click to a Product
    Verify Add to Cart Button Is Visible
    Close Application

Shopping-04
    [Documentation]     POSITIVE - User selects product and clicks add to cart button, clicks cart button → should see proceed to checkout button and product on my cart page
    Open iOS App
    Click to a Product
    Click Add to Cart Button
    Click Cart Button
    Verify Product is on My Cart Page and Proceed To Checkout Button Is Visible

Shopping-05
    [Documentation]     POSITIVE - User adds product to cart and clicks proceed to checkout button → should see login page
    Open iOS App
    Click to a Product
    Click Add to Cart Button
    Click Cart Button
    Click Proceed to Checkout Button
    Verify Login Page Is Visible