*** Settings ***
Documentation  This is test case to check if user can select a product, add in cart & checkout.
Resource  ../../Resources/Amazon.robot
Resource  ../../Resources/Common.robot
# Setup & Tear down will run before each test.
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web test
Suite Setup  Create database connection
Suite Teardown  Close database connection

*** Variables ***
${BROWSER}  chrome
${STRAT_URL}  https://www.amazon.com
${SEARCH_TERM}  Ferrari 458

*** Test Cases ***
Search product
    [Documentation]  This test case will only search for product Ferrari 458 in Amazon.com
    [Tags]  Smoke
    #User defined keyword. Definition of user defined keywords can be found in Amazon.robot file
    Amazon.Search for Products


Add item to shopping cart
    [Documentation]  This test case will Search for Ferrari 458 , Add to shopping cart & checkout.
    [Tags]  Smoke
    #User defined keyword. Definition of user defined keywords can be found in Amazon.robot file
    Amazon.Search for Products
    Amazon.Select product from serach result
    Amazon.Add product to cart
    Amazon.Begin checkout