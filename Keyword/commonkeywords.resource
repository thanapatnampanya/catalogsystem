*** Keywords ***
#GET PRICE INFO
Get Price Info
    Create Session  rm3     ${BASE_URL}
    ${body}=    Create Dictionary
    ...    storeCode=${STORE_CODE}
    ...    customerId=${CUSTOMER_MMID}
    ...    date=${PRICE_DATE}
    ...    articles=${PRODUCT_CODE}
    ...    priceChannel=${PRICE_CHANNEL}

    ${response}=    POST On Session
    ...    rm3
    ...    ${GET_PRICE_INFO_ENDPOINT}
    ...    json=${body}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}

    Should Be Equal As Integers    ${response.status_code}    200

    RETURN    ${value}

Verify Price Info Response Get Price Info Valid
    [Arguments]    ${resp}
    ${parsed_resp}=    Evaluate    json.loads('''${resp}''')    json
    ${art_list}=    Get From Dictionary    ${parsed_resp}    Art
    ${first_art}=    Get From List    ${art_list}    0
    ${is_contract_price}=    Get From Dictionary    ${first_art}    isContractPrice
    Should Be Equal    ${is_contract_price}    Y


#ITEM PRICE
Get Item Price
    Create Session      rm3     ${BASE_URL}
    ${store_code_int}=    Convert To Integer    ${STORE_CODE}
    ${headers}=    Create Dictionary    Content-Type=application/json    Accept=application/hal+json
    ${body}=    Create Dictionary
    ...     cus=${CV_CODE}
    ...     store=${store_code_int}
    ...     date=${ITEM_PRICE_DATE}
    ...     productList=@{PRODUCT_LIST}

    ${response}=    POST On Session
    ...     rm3
    ...     ${ITEM_PRICE_ENDPOINT}
    ...     json=${body}
    ...     headers=${headers}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}

    Should Be Equal As Integers    ${response.status_code}    200

    RETURN    ${value}

Verify Price Info Response Get Price Info Valid From Item Price API
    [Arguments]    ${resp}
    ${parsed_resp}=    Evaluate    json.loads('''${resp}''')    json
    ${data}=    Get From Dictionary    ${parsed_resp}    data
    ${items}=    Get From Dictionary    ${data}    items
    ${first_item}=    Get From List    ${items}    0
    ${is_contract_price}=    Get From Dictionary    ${first_item}    isContractPrice
    Should Be Equal    ${is_contract_price}    Y