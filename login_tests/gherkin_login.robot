*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials

sum of variables
  ${calculatedTotalPrice} =    set variable    ${42.42}
  ${productPrice1} =    set variable    ${43.15}
  ${variable 1} =    set variable    ${43.15}
  ${variable 2} =    set variable    ${43.1}
  Should Be True     """${variable 1}""".lower() == """${variable 2}""".lower()
  log to console  ${calculatedTotalPrice}    
  
 
sum of two variables
  ${calculatedTotalPrice} =    set variable    ${45}
  ${productPrice1} =    set variable    ${43}
  ${productPrice2} =    set variable    ${2}
  ${calculatedTotalPrice} =    Evaluate    ${calculatedTotalPrice}+${productPrice1}
  log to console  ${calculatedTotalPrice}   
