*** Settings ***
Documentation   To validate the Login form
Library     SeleniumLibrary
Library     Collections
Test Setup      Open The Browser With The Automationexercise Url
Test Teardown   Close Browser session
Resource        ../PO/Generic.robot
Resource        ../PO/ProductPage.robot


*** Variables ***
${Error_Message_Login}      css:.alert-danger
${Name Of Product}          men Tshirt


*** Test Cases ***
Verify that products are visible in cart
    navigate to page products
    search men tshirt in products page and add products to cart


*** Keywords ***
navigate to page products
    Go To   https://automationexercise.com/products

search men tshirt in products page and add products to cart

    Verify if search bar is visible
    Search product name and check product name is displayed      ${Name Of Product}
    add products to cart

verify that product are visible in cart

    verify that product are visible in cart























