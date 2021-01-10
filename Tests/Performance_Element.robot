*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Verify "Performance" Element
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Click Element    xpath://*[@id="menu__Performance"]/b
    Click Element    id:menu_performance_Configure
    Click Element    xpath://*[@id="menu_performance_Configure"]
    Click Element    id:menu_performance_ManageReviews
    Click Element    xpath://*[@id="menu_performance_viewMyPerformanceTrackerList"]
    Click Element    id:menu_performance_viewEmployeePerformanceTrackerList