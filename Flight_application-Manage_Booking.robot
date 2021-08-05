*** Settings ***
Test Teardown     Close Browser
Resource          CommonKeywords.txt
Library           SeleniumLibrary

*** Test Cases ***
TC01_Book a Flight - Round Trip between To and From Destinations_Verify 'From' cities
    Loginandnavigatetourl
    Change to iframe
    Validusernameandpassword
    Validationonmanagebooking
    VerifyFromCity
    Logout

TC02_Book a Flight - Round Trip between To and From Destinations_Verify 'To' cities
    Loginandnavigatetourl
    Change to iframe
    Validusernameandpassword
    Validationonmanagebooking
    VerifyToCity
    Logout

TC03_Book a Flight - Round Trip between To and From Destinations_Verify 'Class'
    Loginandnavigatetourl
    Change to iframe
    Validusernameandpassword
    Validationonmanagebooking
    VerifyClass
    Logout

TC04_Book a Flight \ - Verify Radio button should not be select by default
    Loginandnavigatetourl
    Change to iframe
    Validusernameandpassword
    Validationonmanagebooking
    VerifyClass
    VerifyRadiobutton
    Logout

TC05_Book a Flight - One way Trip between To and From Destinations_From Toronto to Paris_Economy
    Loginandnavigatetourl
    Change to iframe
    Validusernameandpassword
    Validationonmanagebooking
    BookEconomyTicket
