*** Settings ***
Resource    ../Keyword/commonlib.resource


*** Test Cases ***
Open Browser To Login URL
    Open Browser To Login Page
    Input Credentials   ${SE_USERNAME}     ${PASSWORD}
    Click On The Sign In Button
    Verify Successful Login
    Click on the Contract Price Button
    Click on the Create Month Period Button
    Input the Information to Create Month Period


