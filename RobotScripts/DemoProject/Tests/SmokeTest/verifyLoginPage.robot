*** Settings ***
Documentation  This is basic info about test suite
Library  Selenium2Library
#Documentation  This is some basc info about suite.
Library  Selenium2Library
*** Variables ***

*** Test Cases ***
Verify if user is logged in
    [Documentation]  This is some basic info to test case.
    [Tags]  Smoke
    OPEN BROWSER  http://www.amazon.com  chrome
    wait until page contains  Your Amazon.com
    click link  //*[@id='nav-link-accountList']
    wait until page contains element  id=ap_email
    click button   id=signInSubmit
    close browser

Add item to shopping cart
    [Documentation]  This is some basic info to test case.
    [Tags]  Smoke
    OPEN BROWSER  http://www.amazon.com  chrome
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=.//*[@id='nav-search']/form/div[2]/div/input
    wait until page contains  Showing most relevant results. See all results for Ferrari 458.
    click link  xpath=.//*[@title='Maisto 1:24 Scale Assembly Line Ferrari 458 Italia Diecast Model Kit (Colors May Vary)']
    wait until page contains  Back to search results for "Ferrari 458"
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart
    wait until page contains element  css=#hlb-ptc-btn-native  20
    click link  css=#hlb-ptc-btn-native
    close browser

*** Keywords ***
