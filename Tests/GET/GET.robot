*** Settings ***
Documentation                  Examples for using Robot Framework on automating API tests : Get Request
...
Library                        RequestsLibrary
Library                        Collections

Suite Setup                    Create Session                   jsonplaceholder       https://jsonplaceholder.typicode.com

*** Test Cases ***

Get Request With 200 Response Code And Response Body
    [documentation]                  This test case verifies that the response code of the GET Request should be 200,
    ...                              the response body contains the 'title' key with the right value,
    [tags]                           api                   get

    ${response}=                     GET On Session        jsonplaceholder                         /posts/1
    Status Should Be                 200                   ${response}

    Log To Console                   ${response.json()}
    Dictionary Should Contain Key    ${response.json()}    title                                   msg = "title key does not exist"

    #Check title from Response Body as sunt aut facere repellat provident occaecati excepturi optio reprehenderit
    ${title}=                        Set Variable          ${response.json()}[title]               title
    Log To Console                   ${title}[0]
    Should be equal                  ${title}[0]           sunt aut facere repellat provident occaecati excepturi optio reprehenderit

Get Request With Url Params
    [documentation]                  Example for a Get Request using some parameters
    [tags]                           api                   get

    ${auth} =                        Create List           MyList                                  PMAK-628b95e0a9ec6c450fda52ea-8417b4935d40e0935555fb98427a5a93db
    ${params} =                      Create Dictionary     type=Condos                             filter=2Bedrooms
    Create Session                   testingapi            url=http://postman-echo.com             auth=${auth}
    ${resp} =                        Get Request           testingapi                              /get                                params=${params}

    Log To Console                   ${resp.json()}
