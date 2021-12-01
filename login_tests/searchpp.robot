*** Settings ***
Documentation   Test Demonstration
Library     SeleniumLibrary

*** Variables ***
${variable 1}      tt
${variable 2}      tt
${search_word}     iPhone

*** Test Cases ***
Display iPhone Search Results
   Should Be True     """${variable 1}""".lower() == """${variable 2}""".lower()
