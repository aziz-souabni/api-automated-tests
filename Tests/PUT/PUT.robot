*** Settings ***
Documentation                  Examples for using Robot Framework on automating API tests : PUT
Library                        RequestsLibrary
Library                        Collections
Suite Setup                    Create Session                     jsonplaceholder         https://jsonplaceholder.typicode.com

*** Test Cases ***
Tests 1 - Update a resource
    [documentation]                    Updating a ressource
    [tags]                             api                     put

    &{data}=                           Create dictionary       id=1                                    title=foo    body=bar        userId=1
    Log To Console                     ${data}
    ${response}=                       PUT On Session          jsonplaceholder                         /posts/1     json=${data}
    Status Should Be                   200                     ${response}
    Log To Console                     ${response.json()}
    Dictionary Should Contain Value    ${response.json()}      bar
