# api-automated-tests
Some examples to show how to set up automated tests on APIs
Test 1 – GET request
Step 1: Perform a ‘GET’ request to https://www.metaweather.com/api/location/search/?query=london
Step 2: Verify that the response code is ‘200’.
Step 3: Verify that the ‘title’ key in the response body has the value ‘London’.
Step 4: Verify that the ‘location_type’ key is present in the response body.

Test – POST request
Step 1: Perform a ‘POST’ request to https://jsonplaceholder.typicode.com/posts with header and body.
Step 2: Verify that the response code is ‘201’.
Step 3: Verify that the ‘id’ key in the response body has the value ‘101’.
Step 4: Verify that the value of the response header ‘Content-Type’ is ‘application/json; charset=utf-8’.
