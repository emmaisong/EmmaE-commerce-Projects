*** Settings ***
Suite Setup       Set Selenium implicit wait    10s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Library           FakerLibrary
Resource          ../resources/OrangeHRM_Tests.resource

*** Test Cases ***
Verify "Configuration SubMenu" Element
    Navigate To Application Homepage And Login Successfully
    PIM Module
    PIM Configuration

    PIM Module
    PIM Add Employee
    ${First Name}=    FakerLibrary.First Name
    Log    ${First Name}
    Set Test Variable    ${First Name}
    Set Selenium Speed    1
    Input Text  name:firstName   ${First Name}

    ${Last Name}=    FakerLibrary.Last Name
    Log    ${Last Name}
    Set Test Variable    ${Last Name}
    Set Selenium Speed    1
    Input Text  id:lastName   ${Last Name}

    ${User Name}=    FakerLibrary.User Name
    Log    ${User Name}
    Set Test Variable    ${User Name}
    Set Selenium Speed    1
    Input Text  name:user_name   ${User Name}

    ${Password}=    FakerLibrary.Password
    Log    ${Password}
    Set Test Variable    ${Password}
    Set Selenium Speed    1
    Input Text  name:user_password   ${Password}

    ${Password}=    FakerLibrary.Password
    Log    ${Password}
    Set Test Variable   ${Password}
    Set Selenium Speed    1
    Input Text  xpath://*[@id="re_password"]  ${Password}

    PIM Module
    Customer Field
    ${Name}=    FakerLibrary.Name
    Log    ${Name}
    Set Test Variable    ${Name}
    Set Selenium Speed    1
    Input Text  name:customField[name]   ${Name}
    Select From List By Index  id:customField_screen  4
    Select From List By Index  id:customField_type  1
    Click Element  id:btnSave

    PIM Module
    Data Import
    Reporting Methods
    Reasons For End Of Contract

#Verify Employee List SubMenu
   #Navigate To Application Homepage And Login Successfully
   PIM Module
   Employee List

