# Common keywords file for reusable keywords
*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    #open browser  http://www.amamzon.com  chrome
    open browser  about:blank  ${BROWSER}

End Web test
    close browser

Create database connection
    Log  Database connnection creted

Close database connection
    Log  Clear Database
    Log  Database connection closed
