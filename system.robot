*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Configure Selenium
    Set Selenium Speed    .5 Seconds
    Set Screenshot Directory    ./screenshots/

Navigate To Homepage
    Open Browser    ${SiteUrl}    ${BROWSER}
    Maximize Browser Window

Exit Selenium
    Close Browser

Generate Random Number
    ${random_number}    Evaluate    random.randint(1000000, 9999999)    random
    RETURN    ${random_number}
