#Keyword file
*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PageObjects/LandingPage.robot
Resource  ../Resources/PageObjects/TopNav.robot
Resource  ../Resources/PageObjects/SearchResults.robot
Resource  ../Resources/PageObjects/Product.robot
Resource  ../Resources/PageObjects/Cart.robot
Resource  ../Resources/PageObjects/SignIn.robot

*** Keywords ***


Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search For Products
    SearchResults.Verify Search Completed

Select product from serach result
    SearchResults.Click Product Liink
    Product.Verify Product Loaded

Add product to cart
    Product.Add To Cart
    Cart.Verify Product Added To Cart


Begin checkout
    Cart.Checkout

