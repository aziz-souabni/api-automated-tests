# How to set up automated tests on APIs using Robot Framework with CI integration?
In this repository, You will find some examples of automating tests on APIs using Robot Framework. The first part will be dedicated to the GET request and the second one to Post request. And finally, Github Actions will be used as a CI to schedule test execution. The examples comes with videos and screeshots.

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
The animation below show how to execute tests locally using "robot" command :

![API get request test execution](https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/test-execution-get.gif)

### Tests logs and reports
Robot Framework provides easy-to-read result [reports](https://github.com/aziz-souabni/api-automated-tests/blob/main/report.html) and [logs](https://github.com/aziz-souabni/api-automated-tests/blob/main/log.html) in HTML format :

* Report files : They contains an overview of the test execution results and statistics based on tags as well as a list of all executed test cases. An example report file of successful test execution :

![report file test result robot framework](https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/test-report.png)

* Log files : They contains details to investigate test results. An example of beginning of a log file :

![log file test result robot framework](https://github.com/aziz-souabni/api-automated-tests/blob/main/readme-assets/test-log.png)



