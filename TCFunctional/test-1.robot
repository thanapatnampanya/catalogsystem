# Source - https://stackoverflow.com/a
# Posted by Nafa
# Retrieved 2025-11-28, License - CC BY-SA 4.0

*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary


*** Test Cases ***
Valid Login
    Open Browser     https://google.fr    chrome
