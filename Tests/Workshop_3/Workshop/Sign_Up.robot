*** Settings ***
Library    SeleniumLibrary    
Variables    ../../../Objects/Automatic_practices/Automatic_Practice.py
Test Setup    Open Browser    http://automationpractice.com/index.php    firefox
Test Teardown    Close Browser

*** Test Cases ***
Register to Eshop
    Click Link    ${link_login}
    Wait Until Page Contains Element    ${auth_tbox_email}    
    Input Text    ${auth_tbox_email}    hello@hollllo.com
    Click Button    ${btn_create_account}
    Wait Until Page Contains Element    ${sup_radio_mrs}    
    Click Element    ${sup_radio_mrs}
    Input Text    ${sup_tbox_first_name}    Hacker
    Input Text    ${sup_tbox_last_name}    School
    Textfield Should Contain    ${sup_tbox_email}    hello@hollllo.com
    Input Password    ${sup_pwd_password}    password
    #Pr�ce s dropdowny - 3 mo�nosti
    Select From List By Index    ${sup_dropdown_day}    26
    Select From List By Label    ${sup_dropdown_month}    March${SPACE}
    Select From List By Value    ${sup_dropdown_year}    2010  
    Select Checkbox    ${sup_chck_newslettter}    
    #your address
    Input Text    ${addr_tbox_first_name}    jmeno
    Input Text    ${addr_tbox_last_name}    prijmeni
    Input Text    ${addr_tbox_company}    spolecnost
    Input Text    ${addr_tbox_address1}    adresa1
    Input Text    ${addr_tbox_address2}    adresa2
    Input Text    ${addr_tbox_city}    mesto
    Select From List By Label    ${addr_dropdown_state}    California 
    Input Text    ${addr_tbox_zip}    17000
    Select From List By Label   ${addr_dropdown_country}    United States
    Input Text    ${addr_tbox_info}    abcd
    Input Text    ${addr_tbox_phone}    111222333
    Input Text    ${addr_tbox_cellphone}    444555666
    Input Text    ${addr_tbox_alias}    alias
                  
    

    
 