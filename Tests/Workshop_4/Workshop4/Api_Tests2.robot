*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com
Test Teardown    Output    response body    ${OUTPUT_DIR}/response.json

*** Variables ***
${new_user}    {"id": 11, "name": "John Doe"}
    

*** Test Cases ***
Update User
    PATCH    /users/2    {"name":"John Doe"}
    String    response body name    John Doe


*** inactive ****
Simple Get
    Set Headers    {"automatization":"abcd"}
    GET    /users
    Output    request    ${OUTPUT_DIR}/request.json
    Output    response    ${OUTPUT_DIR}/response.json
        
Verify Required Fields
    GET    /users/1
    Object    Response Body    required=["id", "name"]
    #Expect Response Body    {"required":["id","name"]}
    Clear Expectations
   
Delete A User
    DELETE    /users/1
    # jestli je reponse jedna ze 3 moznost - 200, 202, 204
    Integer    response status    200    202    204
    
Create New User
    POST    /users    ${new_user}
    Output    request body    ${OUTPUT_DIR}/request.json
    
Add New Fields To User
    PUT    /users/1    {"new_filed":123, "money":1000, "single":true}
    Integer    response body money    1000
    Boolean    response body single    true
    Output    request    ${OUTPUT_DIR}/request.json