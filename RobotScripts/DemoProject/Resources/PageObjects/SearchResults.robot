*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
    wait until page contains  Showing most relevant results. See all results for ${SEARCH_TERM}.

Click Product Liink
        click link  xpath=.//*[@title='Maisto 1:24 Scale Assembly Line Ferrari 458 Italia Diecast Model Kit (Colors May Vary)']