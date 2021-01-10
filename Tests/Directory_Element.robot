*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Case ***
Verify "Directory" Elements
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Search Directory Elements
    Directory JobTitle
    Directory Location
    Directory Search
    Directory Reset