*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../../Keywords/Eshop/Eshop_Keywords.robot
Variables    ../../../Resources/Eshop/Registration_Data.py
Test Setup    Open Eshop Registration Form    ${email}
Test Teardown    Capture Screenshot And Close Browser

*** Variables ***
${email}    test@hackershool.cz

*** Test Cases ***
Invalid Zip Code
    [Template]    Invalid Zip Code Should Fail 
    :FOR    ${zip_code}    IN    @{invalid_zip_codes}
    \    ${zip_code}    &{valid_data}  

Invalid Password
    [Template]    Invalid Zip Code Should Fail 
    :FOR    ${password}    IN    @{invalid_passwords}
    \    ${password}    &{valid_data}  


*** Keywords ***
Invalid Zip Code Should Fail
    [Arguments]    ${zip_code}    &{test_data}
    Set to Dictionary    ${test_data}    postcode=${zip_code}
    Fill In Registration Form    &{test_data}
    Click Button    ${Button_register}
    Page Should Contain    The Zip/Postal code you've entered is invalid. It must follow this format: 00000
    
Invalid Value Should Fail
    #bude na gitu
Invalid Password Should Fail
    [Arguments]    ${pwd}    &{test_data}
    Set to Dictionary    ${test_data}    password=${pwd}
    Fill In Registration Form    &{test_data}
    Click Button    ${Button_register}
    Page Should Contain     passwd is invalid.
    
    
    
    
    