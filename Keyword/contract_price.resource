*** Keywords ***

Click on the Contract Price Button
    ${contract_price_button}        Set Variable        
    ...     xpath=//*[@data-button-id="178.Catalog.Homepage.actionButton3"]
    Wait Until Page Contains Element        ${contract_price_button}    ${TIMEOUT}
    Wait Until Element Is Visible       ${contract_price_button}    ${TIMEOUT}    
    Click Element                       ${contract_price_button}

Click on the Create Month Period Button
    ${contract_month_create_button}     Set Variable        
    ...     xpath=//*[@data-button-id="200.Catalog.ContractPrice_Overview.actionButton10"]
    Wait Until Page Contains Element        ${contract_month_create_button}       ${TIMEOUT}
    Wait Until Element Is Visible       ${contract_month_create_button}         ${TIMEOUT}
    Click Element       ${contract_month_create_button}

Input the Information to Create Month Period
    #Select Contract Type
    ${contract_type_locator}=       Set Variable        
    ...     xpath=//select[contains(@id,"PopupSidebar_ContractPeriod") and contains(@class,"form-control")] 
    Wait Until Page Contains Element         ${contract_type_locator}     ${TIMEOUT}
    Wait Until Element Is Visible         ${contract_type_locator}        ${TIMEOUT}
    Click Element          ${contract_type_locator}
    Select From List By Value       ${contract_type_locator}    B2B
    #Select Customer
    ${customer_dropdown}=       Set Variable        
    ...     xpath=//input[contains(@class,"widget-combobox-input")]
    Wait Until Page Contains Element         ${customer_dropdown}
    Click Element     ${customer_dropdown}
    Wait Until Element Is Enabled       ${customer_dropdown}
    Click Element        ${customer_dropdown}
    Input Text     ${customer_dropdown}    Taylor Swift
    Sleep       3s
    Press Key       ${customer_dropdown}        ENTER
    Sleep       4s
    #Select Month and Year
    ${contract_month}=       Set Variable        December
    ${contract_year}=        Set Variable        2025
    ${mmmm_yyyy}=        Set Variable        ${contract_month}  ${contract_year}
    ${date_input}=      Set Variable
    ...     xpath=//*[@placeholder="MMMM yyyy"]
    Click Element    ${date_input}
    Input Text      ${date_input}       ${mmmm_yyyy}
    Sleep       3s
    #Click on "Create Button"
    ${create_button}        Set Variable        
    ...         xpath=//*[@data-button-id="315.Catalog.PopupSidebar_ContractPeriod.actionButton7"]
    Wait Until Element Is Visible       ${create_button}
    Click Element       ${create_button}






