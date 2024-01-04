*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Navigate To Add Invoice
    Click Element    css:[href="#/addInvoice"]

Open Invoice
    [Arguments]    ${id}
    Click Link     xpath://a[contains(text(), '${id}')]
