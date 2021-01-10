*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Leave Application Form Details
  Navigate To Application Homepage
  Enter Username
  Enter Password
  User Login
  Click Element    xpath://*[@id="menu_leave_viewLeaveModule"]/b
  Click Element    id:menu_leave_viewMyLeaveList
  Click Element    id:menu_leave_Entitlements
  Click Element    id:menu_leave_Reports
  Click Element    id:menu_leave_Configure
  Click Element    xpath://*[@id="menu_leave_assignLeave"]
  Click Element    id:menu_leave_viewLeaveList
  Click Element    xpath://*[@id="menu_leave_assignLeave"]