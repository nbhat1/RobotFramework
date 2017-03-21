*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Keywords ***
Search For Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text  id=twotabsearchtextbox  ${SEARCH_TERM}

Submit Search
    click button  xpath=.//*[@id='nav-search']/form/div[2]/div/input


