*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***  
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
