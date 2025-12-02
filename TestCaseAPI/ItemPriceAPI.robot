*** Settings ***
Library     RequestsLibrary
Resource    ../Keyword/commonlib.resource
Resource    ../Variables/APITestingVariables.resource

*** Test Cases ***
ITEM PRICE INFO
    ${response}=    Get Item Price
    Verify Price Info Response Get Price Info Valid From Item Price API     ${response.text}