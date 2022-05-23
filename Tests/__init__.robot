*** Settings ***
#Resource                         ${EXECDIR}/Modules/Common.robot
#Force Tags                       Data
#Suite Setup                      Generate authorization token
#Test setup                       Assign Token
#Test Teardown                    Teardown API tests

*** Variables ***

# ${URL}                          https://${Server}
# ${auth_url}                     /apis/auth/v1/login

*** Keywords ***

# Generate authorization token
    # Log                              ${Instance}
    # Log                              ${Server}
    # Create Session                   alias=API                          url=${URL}                       disable_warnings=1
    # ${body} =                        Create Dictionary                  username=${Username}             password=${Password}
    # ${headers} =                     Create Dictionary                  Content-Type=application/json
    # ${resp}=                         Post Request                       API                              ${auth_url}
    # ...                              json=${body}                       headers=${headers}
    # Should Be Equal As Strings       ${resp.status_code}                200
    # Log                              ${resp.json()}
    # ${token}=                        Collections.Get From Dictionary    ${resp.json()}[token]            access_token
    # Set Suite Variable               ${AuthToken}                       ${token}                         children=true
