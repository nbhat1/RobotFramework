*** Settings ***
Documentation  This is basic info about whole suite
Library  Selenium2Library
#Documentation  This is some basc info about suite.
Library  Selenium2Library

*** Variables ***



*** Test Cases ***
User must singin to checkout.
    [Documentation]     This is some basic info about the tests.
    [Tags]  Smoke
    open browser  http://www.amazon.com  chrome
    close browser

*** Keywords ***
