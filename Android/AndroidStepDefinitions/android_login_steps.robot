*** Settings ***
Resource    ../AndroidLocators/android_login_locators.robot
Library     AppiumLibrary

*** Keywords ***
Open Android App
    Open Application    http://localhost:4723
    ...    platformName=Android
    ...    deviceName=emulator-5554
    ...    automationName=UiAutomator2
    ...    app=/Users/altaygencbay/Desktop/MOBILE/APKs/mda-2.2.0-25.apk
    ...    appPackage=com.saucelabs.mydemoapp.android
    ...    appActivity=com.saucelabs.mydemoapp.android.view.activities.SplashActivity
    ...    appWaitActivity=com.saucelabs.mydemoapp.android.view.activities.*
    ...    noReset=${False}

Click Android Menu Button
    Click Element    ${MENU_BUTTON}

Click Android Login
    Click Element    ${LOGIN_BUTTON}

Enter Android Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Android Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Android Login Button On Login Page
    Click Element    ${LOGIN_BUTTON_LOGINPAGE}

Verify Android Products Page Is Visible
    Page Should Contain Element    ${PRODUCTS_PAGE}

Verify "Username is required" Warning Is Visible
    Page Should Contain Text    Username is required

Verify "Enter Password" Warning Is Visible
    Page Should Contain Text    Enter Password

Verify "Invalid Username or Password" Warning Is Visible
    Page Should Contain Text    Enter Password

Close Android App
    Close Application