*** Settings ***
Documentation                  Examples for using Robot Framework on automating API tests : DELETE
Library                        RequestsLibrary
Library                        Collections
Suite Setup                    Create Session      jsonplaceholder         https://jsonplaceholder.typicode.com

*** Test Cases ***
Tests 1 - Delete a resource
    [documentation]     Deleting a ressource
    [tags]              api                     delete

    ${response}=        DELETE On Session       jsonplaceholder                         /posts/1
    Status Should Be    200                     ${response}
    Log To Console      ${response.json()}
