*** Settings ***
Library			SeleniumLibrary
Test Setup        Open Browser        url=https://www.google.com        remote_url=http://localhost:4444/wd/hub
#browser=safari
#remote_url=http://selenium:4444/wd/hub
#remote_url=http://localhost:4444/wd/hub
Test Teardown        Close Browser
*** Variables ***

*** Test Cases ***
Sample Test
    Log        hello
    ${search_field}        Get WebElement    name:q
    Input Text        locator=${search_field}        text=random search
    Press Keys    ${search_field}        ENTER