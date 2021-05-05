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
Scenario 1
    Go to Ebay
    Maximize Browser Window
    Click Element                      id:gh-shop-a
    Click Element                      //a[contains(text(),'Cell phones & accessories')]
    Click Element                      xpath=//html[1]/body[1]/div[3]/div[3]/div[1]/div[1]/div[1]/div[1]/section[1]/ul[1]/li[1]/a[1]
    Click Element                      xpath=//body[1]/div[3]/div[3]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/div[1]/button[1]
    # ^more refinements button
    Set Selenium Implicit Wait         10 seconds
    Click Element                      xpath=/html[1]/body[1]/div[11]/div[2]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/div[11]
    Set Selenium Implicit Wait         10 seconds
    Click Element                      xpath=/html[1]/body[1]/div[11]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[8]/span[1]
    # ^price filter
    Click Element                      xpath=/html[1]/body[1]/div[11]/div[2]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/fieldset[1]/ul[1]/li[1]/div[2]/div[1]/div[1]/div[1]/input[1]
    Set Selenium Implicit Wait         10 seconds
    Input Text                         xpath=/html[1]/body[1]/div[11]/div[2]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/fieldset[1]/ul[1]/li[1]/div[2]/div[1]/div[1]/div[1]/input[1]  100000
    Set Selenium Implicit Wait         10 seconds
    Input Text                         xpath=/html[1]/body[1]/div[11]/div[2]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/fieldset[1]/ul[1]/li[1]/div[2]/div[1]/div[2]/div[1]/input[1]  1000000
    Set Selenium Implicit Wait         10 seconds
    Click Element                      xpath=/html[1]/body[1]/div[11]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[10]/span[1]
    # ^Item location
    Set Selenium Implicit Wait         10 seconds
    Click Element                      xpath=/html[1]/body[1]/div[11]/div[2]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/fieldset[1]/div[5]/label[1]
    # ^Choose location
    Set Selenium Implicit Wait         10 seconds
    Click Element                      xpath=//button[contains(text(),'Apply')]
    Sleep                              5s
    Close Browser
