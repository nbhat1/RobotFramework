*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Product Added To Cart
    wait until page contains  Added to Cart
    wait until page contains element  css=#hlb-ptc-btn-native  20

Checkout
    click link  css=#hlb-ptc-btn-native