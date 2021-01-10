*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
User can Navigate to OrangeHRM Homescreen and succesfully Login with valid credentials
    #Steps
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Page should contain Element  id:welcome