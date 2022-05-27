*** Settings ***
Documentation                  Examples for using Robot Framework on automating API tests : POST Request
Library                        RequestsLibrary
Library                        Collections
Suite Setup                    Create Session                   jsonplaceholder         https://jsonplaceholder.typicode.com

*** Test Cases ***
Tests 1 - Create a resource
    [documentation]                  Creating a ressource
    [tags]                           api                     post

    &{data}=                         Create dictionary       title=Robotframework requests           body=This is a test!    userId=1
    Log To Console                   ${data}
    ${response}=                     POST On Session         jsonplaceholder                         /posts                  json=${data}    expected_status=anything
    Status Should Be                 201                     ${response}
    Log To Console                   ${response.json()}
    Dictionary Should Contain Key    ${response.json()}      id
