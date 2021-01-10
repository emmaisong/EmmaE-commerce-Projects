*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Verify "Maintenance" Element
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Click Element    xpath://*[@id="menu_maintenance_purgeEmployee"]/b
    Click Element    id:menu_maintenance_PurgeRecords
    Click Element    id:menu_maintenance_accessEmployeeData