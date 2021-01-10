*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
#Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Verify "Time" Element
    Navigate To Application Homepage
    Enter Username
    Enter Password
    User Login
    Click Time Module
    My TimeSheets Credentials
    Click Time Module
    Employee TimeSheets Credentials
    Click Time Module
    Attendance
    My Records
    Punch In/Out
    Attendance
    Configuration
    Click Time Module
    Reports
    Project Reports
    Project Date Range
    Click Time Module
    Reports
    Employee Reports
    #Note: Having run several teste on orangeHRM, it is noted that "TIME" Module is inconsistent.


