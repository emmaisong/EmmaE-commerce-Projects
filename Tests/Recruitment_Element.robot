*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Verify "Recruitment" Element
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Recruitment Element
    Candidate Recruitment
    Vacancy Recruitment