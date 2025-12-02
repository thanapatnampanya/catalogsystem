*** Settings ***
Library     RequestsLibrary
Resource    ../Keyword/commonlib.resource

*** Test Cases ***
Get Price Info V6
    ${response}=    Get Price Info
    Verify Price Info Response Get Price Info Valid    ${response.text}


