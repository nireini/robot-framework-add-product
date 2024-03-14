*** Settings ***
Documentation     All the page objects and keywords of landing page
Library           SeleniumLibrary
Resource          Generic.robot

*** Variables ***
${search bar}           id:search_product
${search button}        id:submit_search
${name of product}        css:#cartModal ~ div > div > div.single-products > div.productinfo.text-center > p
${add to cart button first product on the list}        css:#cartModal ~ div > div.product-image-wrapper > div.single-products > div.product-overlay > div.overlay-content > a
${add to cart button first product on the list_2}      css:body > section > div > div.row > div.col-sm-9.padding-right > div > div:nth-child(3) > div > div.single-products > div.product-overlay > div > a
${continue shopping button}                            css:#cartModal > div > div > div.modal-footer > button
${first_ticket}                                        css:css:#cartModal ~ div
${cart button}                                         css:#header > div > div > div > div.col-sm-8 > div > ul > li:nth-child(3) > a

*** Keywords ***

Verify if search bar is visible
    Element Should Be Visible           ${search bar}

Search product name and check product name is displayed
    [arguments]         ${name of product}
    Input Text          ${search bar}     ${name of product}
    Click Button        ${search button}
    ${inner_text}=    Get Text        ${name of product}
    Should Be Equal As Strings    ${inner_text}    ${name of product}    ignore_case=True

Add products to cart
    Mouse OVer          ${first_ticket}
    Click Button        ${add to cart button first product on the list}
    Click Button        ${continue shopping button}
    Input Text          ${search bar}     dress
    Click Button        ${search button}
    Mouse OVer          ${first_ticket}
    Click Button        ${add to cart button first product on the list_2}
    Click Button        ${continue shopping button}


    


    





