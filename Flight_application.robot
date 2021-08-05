*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          CommonKeywords.txt    # From CommonKeywords list

*** Test Cases ***
TC_01 LoginScreen Objects On Page
    Loginandnavigatetourl
    Change to iframe
    Objectonwebpage
    [Teardown]    Close Browser

TC02_Login screen - default text for username and password
    Loginandnavigatetourl
    Change to iframe
    Defaultvalueusernamepassword
    [Teardown]    Close Browser

TC03_User doesn't enter email
    Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to iframe
    EmptyUsername
    [Teardown]    Close Browser

TC04_User doesn't enter password
    Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to iframe
    EmptyPassword

TC05_User doesn't enter email or password
    Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to iframe
    EmptyUsernameandPassword

TC06_User enters invalid email format
    Set Selenium Speed    0.5
    Loginandnavigatetourl
    Change to iframe
    Invalidemailformat

TC07_User logs in with valid username and password
    Loginandnavigatetourl
    Change to iframe
    Validusernameandpassword
