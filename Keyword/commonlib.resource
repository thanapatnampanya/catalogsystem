*** Settings ***
Documentation   A resource file with reusable user custom keywords.
Library    SeleniumLibrary
Library    String
Library    Collections
Library    DateTime
Library    Dialogs
Library    JSONLibrary
Library    OperatingSystem
Library    RequestsLibrary
Library    JsonValidator
Library    SeleniumLibrary    screenshot_root_directory=./screenshots
 
#Resource
Resource   ./contract_price.resource
Resource   ./login_keyword.resource
Resource   ./commonkeywords.resource

#Variables
Resource    ../Variables/test_account.resource
Resource    ../Variables/variables.resource
