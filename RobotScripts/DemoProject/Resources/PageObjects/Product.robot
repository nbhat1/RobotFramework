*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Product Loaded
    wait until page contains  Back to search results for "${SEARCH_TERM}"

Add To Cart
    click button  id=add-to-cart-button