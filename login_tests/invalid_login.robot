*** Settings ***
Documentation   Test Demonstration
Library     SeleniumLibrary

*** Variables ***
${variable 1}      ttt
${variable 2}      ttt
${variable 3}      ttt

*** Test Cases ***

Display iPhone Search Results
   Should Be True     """${variable 1}""".lower() == """${variable 2}""".lower()

Display iPhone Search Result2
   Should Be True     """${variable 2}""".lower() == """${variable 3}""".lower()
