*** Settings ***
Test Setup  Log  Setup
Test Teardown  Log  Teardown
Library  Dialogs  
    
*** Variables ***
${expected_value}  abc
*** Test Cases ***
first test 
    verify user input
   
*** Keywords ***
verify user input
    ${user_input}  Get Value From User  Input text value
   Run Keyword If  '${user_input}' != '${expected_value}'  Fail