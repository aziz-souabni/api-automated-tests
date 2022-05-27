*** Settings ***
Documentation                Examples for using Robot Framework on automating API tests : PATCH
Library                      RequestsLibrary
Library                      Collections
Suite Setup                  Create Session                     jsonplaceholder         https://jsonplaceholder.typicode.com

*** Test Cases ***
Test 1 - Patch a resource
    [documentation]                    Patching a ressource
    [tags]                             api                     patch

    &{data}=                           Create dictionary       body=foo
    Log To Console                     ${data}
    ${response}=                       PATCH On Session        jsonplaceholder                         /posts/1    json=${data}
    Status Should Be                   200                     ${response}

    Log To Console                     ${response.json()}
    Dictionary Should Contain Value    ${response.json()}      foo
