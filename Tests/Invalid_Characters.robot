*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Invalid character in the username field should return appropriate error message
    Navigate To Application Homepage
    Invalid Username Characters
    Enter Password
    User Login
    Page should contain    Invalid credentials