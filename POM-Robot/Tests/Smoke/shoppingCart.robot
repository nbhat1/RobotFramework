*** Settings ***
Documentation  This is basic info about test suite
Library  Selenium2Library
#Documentation  This is some basc info about suite.
Library  Selenium2Library
Documentation  This is some basic info about tests.
Resource  Resources/Amazon.robot
Resource  Resources/Common.robot
*** Variables ***

*** Test Cases ***
Add item to shopping cart
    [Documentation]  This is some basic info to test case.
    [Tags]  Smoke

    Common.Begin Web Test
    Amazon.Search for Product
    Amazon.Select Product from search results
    Amazon.Add product to cart
    Amazon.Begin Check out
    Common.End Web Test

