*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com
Test Teardown    Output    response body    ${OUTPUT_DIR}/response.json
    

*** Test Cases ***
Simple Get
    GET    /users/1
    Object    response body
    String    response body name    Leanne Graham   
    Integer    response status    200 


*** inactive ****
Simple Get
    Set Headers    {"automatization":"abcd"}
    GET    /users
    Output    request    ${OUTPUT_DIR}/request.json
    Output    response    ${OUTPUT_DIR}/response.json
    
