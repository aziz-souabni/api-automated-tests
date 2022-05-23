*** Settings ***
Documentation         Examples for using Robot Framework on automating API tests : Post Request
Library               RequestsLibrary
Library               Collections
Suite Setup           Create Session                   jsonplaceholder      https://jsonplaceholder.typicode.com

*** Test Cases ***
Post Request With 201 Response Code And Response Body Verification
    [documentation]                  This test case verifies that the response code of the GET Request should be 200,
    ...                              the response body contains the 'title' key with the right value,
    [tags]                           api                  post

    &{data}=                         Create dictionary    title=Robotframework requests           body=This is a test!    userId=1
    ${resp}=                         POST On Session      jsonplaceholder                         /posts                  json=${data}    expected_status=anything

    Status Should Be                 201                  ${resp}
    Dictionary Should Contain Key    ${resp.json()}       id

    # #Check location_type is present in the repsonse body
    # ${body}=                       Convert To String    ${response.content}
    # Should Contain                 ${body}              location_type
