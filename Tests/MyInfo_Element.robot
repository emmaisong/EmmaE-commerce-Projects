*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Verify "My Info" Element
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Click Element    xpath://*[@id="menu_pim_viewMyDetails"]/b
    Page should contain    Personal Details
    Click Element    xpath://*[@id="sidenav"]/li[1]/a
    Click Element    xpath://*[@id="sidenav"]/li[2]/a
    Click Element    xpath://*[@id="sidenav"]/li[3]/a
    Click Element    xpath://*[@id="sidenav"]/li[4]/a
    Click Element    xpath://*[@id="sidenav"]/li[5]/a
    Click Element    xpath://*[@id="sidenav"]/li[6]/a
    Click Element    xpath://*[@id="sidenav"]/li[7]/a
    Click Element    xpath://*[@id="sidenav"]/li[8]/a
    Click Element    xpath://*[@id="sidenav"]/li[9]/a
    Click Element    xpath://*[@id="sidenav"]/li[10]/a