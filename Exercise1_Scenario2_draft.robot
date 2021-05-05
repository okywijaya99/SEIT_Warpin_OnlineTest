*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
 
*** Variables ***
${browser}        chrome
${ebay}           https://ebay.com/
 
 
*** Keywords ***
Go to ebay
    open browser    ${ebay}    ${browser}
 
*** Test Cases ***
Google Index
    Go to Ebay
    Maximize Browser Window
    Input Text                         id:gh-ac  MacBook
    Click Element                      //select[@id='gh-cat'] 
    Click Element                      //option[contains(text(),'Computers/Tablets & Networking')]
    # ^get this element by searching "Computers/Tablets & Networking" via search bar under Elements tab 
    Click Element                      //input[@id='gh-btn']
    Sleep                              5s
    Close Browser
