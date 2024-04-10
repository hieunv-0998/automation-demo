*** Settings ***
Library             SeleniumLibrary

Test Setup          Open Browser    http://inv.beaufortfairmont.com/#/addInvoice    Chrome
Test Teardown       Close Browser


*** Test Cases ***
Create An Invoice
    Set Selenium Speed    .2 Seconds
    Wait Until Page Contains Element    xpath://input[@placeholder='Enter invoice number']
    ${random_number}    Evaluate    random.randint(1000000, 9999999)
    Input Text
    ...    xpath://input[@placeholder='Enter invoice number']
    ...    ${random_number}
    Input Text    xpath://input[@placeholder='Enter company name']    Beaufort Fairmont, LLC
    Input Text    xpath://input[@placeholder='Enter type of work']    Test Automation
    Input Text    xpath://input[@placeholder='Enter cost']    521.20
    Select From List By Value    xpath://select[@id='selectStatus']    Past Due
    Input Text    xpath://input[@placeholder='yyyy-mm-dd']    2019-12-31
    Input Text
    ...    xpath://input[@name='comment']
    ...    Test Automation experts helping us ramp up our automation efforts.

    Click Button    xpath://button[@id='createButton']

    Wait Until Page Contains Element    xpath://a[contains(text(), '${random_number}')]
    Click Link    xpath://a[contains(text(), '${random_number}')]
    Sleep    5
