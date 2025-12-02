*** Keywords ***

Open Browser To Login Page
    Open Browser       ${URL}        ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}
    Log    Browser opened and navigated to login page.

Input Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible   xpath=//input[@class="form-control mx-name-loginIdTextBox1 form-input"]     ${TIMEOUT}
    Input Text    xpath=//input[@class="form-control mx-name-loginIdTextBox1 form-input"]    ${username}
    Input Text    xpath=//input[@class="form-control mx-name-passwordTextBox1 form-input"]    ${password}
    Log    Entered username and password.

Click On The Sign In Button
    Wait Until Element Is Enabled    xpath=//button[@class="btn mx-button mx-name-signInButton1 sign-in btn-block btn-default"]    ${TIMEOUT}
    Click Button    xpath=//button[@class="btn mx-button mx-name-signInButton1 sign-in btn-block btn-default"]
    Log    Submitted the login form.

Verify Successful Login
    Wait Until Element Is Enabled    xpath=//a[contains(@class,"mx-name-actionButton3")]  ${TIMEOUT}
    Log    Login successful, dashboard page loaded.
    Capture Page Screenshot
    Log    Screenshot captured after successful login.

Browser Close
    Close Browser
    Log    Browser closed.


