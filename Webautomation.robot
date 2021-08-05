*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
OpenBrowser
    Open Browser    https://www.google.com    Chrome
    Close Browser
