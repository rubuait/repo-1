# This is the block for all Imports

*** Settings ***
Library  SeleniumLibrary

# This is where test case resides.
# im learning git
*** Test Cases ***
Open Browser and Verify Amazon Title
    Open Browser        ${amazong_home}         ${browser}
    Title Should Be     ${homepage_title}

Search for Beauty Products
    Input Text          ${search_box}        ${search_item}
    Click Element       ${search_button}
    Title Should Be     Amazon.com: ${search_item}


login to amazon
    [Teardown]          Close Browser
    Click Element        css=#nav-link-accountList > span.nav-line-1
    Wait until element is visible   css=#ap_email
    Input Text           css=#ap_email     4
    wait until Element is visible       css=#continue
    Wait until Element is visible       css=#continue
    click element        css=#continue
    wait until Element is visible       css=#ap_password
    Input password          css=#ap_password    test1234567890
    Click Element           css=#signInSubmit
    sleep
    sleep                  3
    sleep                 4




# this is optional but if you have keywords, they should belong here.
*** Keywords ***


# this keeps variables
*** Variables ***
${browser}              Chrome
${amazong_home}         https://www.amazon.com/
${homepage_title}       Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more
${search_box}           css=#twotabsearchtextbox
${search_button}        css=#nav-search > form > div.nav-right > div > input
${search_item}          Beauty