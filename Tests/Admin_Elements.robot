*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown     Close All Browsers
Library           SeleniumLibrary
#Library           FakerLibrary
Resource          ../Resources/OrangeHRM_Tests.Resource

*** Test Cases ***
Verify the functionality of Admin Elements on the Admin Main menu
   Navigate To Application Homepage And Login Successfully
    Click Admin

Verify User Management
    User Management
    System Users Entries
    Enter Employee Name
    Enter Employee Status
    Click Search Button
    Click Reset Button
    Click Add Button
    Click delete Button
Verify Job Module
    Click Admin
    Maximize Browser Window
    Admin Job
    Edit Job Title
    ${job}=    FakerLibrary.job
    Log    ${job}
    Set Test Variable    ${job}
    Set Selenium Speed    1
    Input Text  xpath://*[@id="jobTitle_jobTitle"]   ${job}
    PayGrade
    ${Word}=     FakerLibrary.Word
    Log    ${Word}
    Set Test Variable    ${Word}
    Set Selenium Speed    1
    Input Text  id:payGrade_name   ${Word}
    Employment Status
    Job Categories
    Work Shifts

Organization General Information field can not be left empty
    Navigate To Application Homepage And Login Successfully
    Enter Username
    Enter Password
    User Login
    Maximize Browser Window
    Wait Until Enabled
    Click Admin
    Admin Organization
    General Info
    Edit Information
    ${Company}=    FakerLibrary.Company
    Log    ${Company}
    Set Test Variable    ${Company}
    Set Selenium Speed    1
    Input Text  id:organization_name   ${Company}
    ${phone number}=    FakerLibrary.phone number
    Log  ${phone number}
    Set Test Variable     ${phone number}
    Set Selenium Speed    1
    Input Text    name:organization[phone]   ${phone number}
    Enter Email To create Account
    ${Street Name}=    FakerLibrary.Street Name
    Log    ${Street Name}
    Set Test Variable    ${Street Name}
    Set Selenium Speed    1
    Input Text    name:organization[street1]    ${Street Name}
    ${City}=    FakerLibrary.City
    Log    ${City}
    Set Test Variable    ${City}
    Set Selenium Speed    1
    Input Text    id:organization_city    ${City}
    ${Post Code}=    FakerLibrary.Post Code
    Log    ${Post Code}
    Set Test Variable    ${Post Code}
    Set Selenium Speed    1
    Input Text    id:organization_zipCode    ${Post Code}
    ${Random Digit}=    FakerLibrary.Random Digit
    Log    ${Random Digit}
    Set Test Variable    ${Random Digit}
    Set Selenium Speed    1
    Input Text    id:organization_taxId    ${Random Digit}
    ${Random Digit}=    FakerLibrary.Random Digit
    Log    ${Random Digit}
    Set Test Variable    ${Random Digit}
    Set Selenium Speed    1
    Input Text    name:organization[registraionNumber]    ${Random Digit}
    Save Information
    Click Admin
    Admin Organization
    Organization Location
    Click Admin
    Admin Organization
    Organization Structure

    Qualification
    Skills
    Education
    Licenses
    Languages
    Membership

   Nationalities

   Configuration Module
   ${email}=    FakerLibrary.email
    Log    ${email}
    Set Test Variable    ${email}
    Set Selenium Speed    1
    Input Text  name:emailConfigurationForm[txtMailAddress]   ${email}


