*** Settings ***
Library    SeleniumLibrary 
Test Setup    Open Browser To Mahara 
Test Teardown    Capture Screenshot and Close Browser  
Resource    ../../../Keywords/Mahara/Mahara_Keywords.txt   


*** Test Cases ***
Mahara Invalid Login
    Login To Mahara    Invalid_Login    Invalid_Password  
    Wait Until Page Contains Element    id=messages
    Page Should Contain    You have not provided the correct credentials to log in. Please check your username and password are correct.            
    Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again.    
    
Mahara Admin Login  
    Login To Mahara    Admin    MaharaDemo
    Page Should Contain Link    https://demo.mahara.org/user/james-jetts    20    
    Page Should Contain Element    xpath=//a[@class="user-icon"]    20

