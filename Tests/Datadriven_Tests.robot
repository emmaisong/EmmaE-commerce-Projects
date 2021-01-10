*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Login With Invalid Credentials Should Return Corresponding Error Message
    [Template]  Login With Different Variables Should Return Corresponding Error Message
    #username              #Password               #Error Message
    Admi                   admin123                Invalid credentials
    Admin                  admin12                 Invalid credentials
    ${EMPTY}               admin123                Username cannot be empty
    Admin                  ${EMPTY}                Password cannot be empty
    ${EMPTY}               ${EMPTY}                Username cannot be empty
    emmabj2000@gmail.com   admin123                Invalid credentials

*** Keyword ***
Login With Different Variables Should Return Corresponding Error Message
    [Arguments]  ${USER_NAME}    ${USER_PASSWORD}    ${ERROR_MESSAGE}
    Navigate To Application Homepage
    Input Text  id:txtUsername  ${USER_NAME}  Admin
    Input Text  xpath://*[@id="txtPassword"]   ${USER_PASSWORD}
    User Login
    Page Should Contain    ${ERROR_MESSAGE}