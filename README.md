# How to set up automated tests on APIs using Robot Framework with CI integration?
In this repository, You will find some examples of automating tests on APIs using Robot Framework. The first part will be dedicated to the GET request and the second one to POST request. And finally, Github Actions will be used for CI side to automate and to schedule test execution with workflows. The examples comes with videos and screeshots.

# Technologies
* Python : https://www.python.org/downloads/
* Robot Framework : https://robotframework.org/
* HTTP RequestsLibrary (Python) : https://github.com/MarketSquare/robotframework-requests#readme

# API Test Automation examples
## Get request automated tests examples
The repository contains two simple examples of testing an API Get request :

### Tests description
Test 1 – Get Request With 200 Response Code And Response Body
* Step 1: Perform a ‘GET’ request to https://jsonplaceholder.typicode.com/posts/1
* Step 2: Verify that the response code is ‘200’.
* Step 3: Verify that the ‘title’ key is in the response body.
* Step 4: Verify that the ‘title’ key in the response body has the value "sunt aut facere repellat provident occaecati excepturi optio reprehenderit".

Test 2 – Get Request With Url Params
* Step 1: Perform a ‘GET’ request to http://postman-echo.com/get?type=Condos&filter=2Bedrooms
* Step 2: Verify that the response code is ‘200’.
* Step 3: Log the response body.

### Tests Execution
The animation below show how to execute tests locally using "robot" command ```robot /Tests```

<kbd><img src="https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/test-execution-get.gif" alt="API get request test execution" width="680"  /></kbd>

### Tests logs and reports
Robot Framework provides easy-to-read result [reports](https://github.com/aziz-souabni/api-automated-tests/suites/6685125576/artifacts/253564703) and [logs](https://github.com/aziz-souabni/api-automated-tests/suites/6685125576/artifacts/253564703) in HTML format :

* Report file contains an overview of the test execution results and statistics based on tags as well as a list of all executed test cases

*An example report file of successful test execution*

<kbd><img src="https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/test-report.png" alt="report file test result robot framework" width="680"  /></kbd>

* Log file contains details to investigate test results

*An example of beginning of a log file*

<kbd><img src="https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/test-log.png" alt="log file test result robot framework" width="680" /></kbd>

# API Automated Tests and Continious Integration
As automated tests could be a part of CI process, Github Actions was used to create custom CI workflows that runs on specific activity on the Github repository such a pull request, at scheduled time or external events. 
In this example, the jobs runs manually using ```workflow_dispatch``` by clicking on the "run workflows" button from "Actions" tab.

*Launch tests using Actions and workflows*

<kbd><img src="https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/ci-github-actions-automated-tests.png" alt="ci github actions automated api tests" width="680" /></kbd>

The media below shows how tests could be runned using Githbub Actions and be a part of Continious Integration and Continious Testing.

<kbd><img src="https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/ci-execution.gif" alt="ci github actions api automated tests execution" width="680"  /></kbd>
