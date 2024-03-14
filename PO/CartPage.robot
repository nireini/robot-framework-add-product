*** Settings ***
Documentation     All the page objects and keywords of landing page
Library           SeleniumLibrary
Resource          Generic.robot

*** Variables ***
${Men Tshirt in cart}                                  css:#product-2 > td.cart_description > h4 > a
${dress in cart}                                       css:#product-3 > td.cart_description > h4 > a
${Men Tshirt price in cart}                            css:#product-2 > td.cart_price > p
${dress price in cart}                                 css:#product-3 > td.cart_price > p

*** Keywords ***

verify that product are visible in cart and check prices
    ${inner_text}=    Get Text        ${Men Tshirt in cart}
    Should Be Equal As Strings    ${inner_text}    Men Tshirt    ignore_case=True
    ${inner_text}=    Get Text        ${dress in cart}
    Should Be Equal As Strings    ${inner_text}    Sleeveless Dress    ignore_case=True
    ${inner_text}=    Get Text        ${Men Tshirt price in cart}
    Should Be Equal As Strings    ${inner_text}    Rs. 400    ignore_case=True
    ${inner_text}=    Get Text        ${dress price in cart}
    Should Be Equal As Strings    ${inner_text}    Rs. 1000    ignore_case=True
