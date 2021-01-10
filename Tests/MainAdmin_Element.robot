*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Verify "MainAdmin" Element
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Click Element    id:menu_admin_viewAdminModule
    Page should contain    User Management
    Click Element    id:menu_admin_UserManagement
    Page should contain    System Users
    Click Element    id:menu_admin_viewSystemUsers
    Page should contain    System Users
    Click Element    xpath://*[@id="menu_admin_Job"]
    Click Element    name:chkSelectAll
    Click Link    xpath://*[@id="resultTable"]/tbody/tr[1]/td[2]/a
    Click Element    id:menu_admin_Organization
    Click Element    id:menu_admin_Qualifications
    Click Element    id:menu_admin_nationality
    Click Element    id:menu_admin_Configuration