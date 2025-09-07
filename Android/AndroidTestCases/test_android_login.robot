*** Settings ***
Resource    ../AndroidStepDefinitions/android_login_steps.robot
Test Teardown    Run Keyword If Test Failed    Capture Page Screenshot

*** Test Cases ***

Login-01
    [Documentation]     POSITIVE - User enters valid username and password → should see Products page
    Open Android App
    Click Android Menu Button
    Click Android Login
    Enter Android Username    bob@example.com
    Enter Android Password    10203040
    Click Android Login Button On Login Page
    Verify Android Products Page Is Visible
    Close Android App

Login-02
    [Documentation]     NEGATIVE - User leaves username and password empty → should see “Username is required” message
    Open Android App
    Click Android Menu Button
    Click Android Login
    Click Android Login Button On Login Page
    Verify "Username is required" Warning Is Visible
    Close Android App

Login-03
    [Documentation]     NEGATIVE - User fills username and leaves password empty → should see “Enter Password" message
    Open Android App
    Click Android Menu Button
    Click Android Login
    Enter Android Username    bob@example.com
    Click Android Login Button On Login Page
    Verify "Enter Password" Warning Is Visible
    Close Android App

Login-04
    [Documentation]     NEGATIVE - User leaves username empty and fills password → should see “Username is required" message
    Open Android App
    Click Android Menu Button
    Click Android Login
    Enter Android Password    10203040
    Click Android Login Button On Login Page
    Verify "Username is required" Warning Is Visible
    Close Android App

Login-05
    [Documentation]     NEGATIVE - User enters invalid username and password → should see “Invalid Username or Password" message
    Open Android App
    Click Android Menu Button
    Click Android Login
    Enter Android Username    wrongusername
    Enter Android Password    wrongpassword
    Click Android Login Button On Login Page
    Verify "Invalid Username or Password" Warning Is Visible
    Close Android App