*** Settings ***
Resource          Userdefinedkeywords1.txt    # This is Userdefined resource file keywords case
Library           DateTime

*** Variables ***
${var1}           4
${Var2}           4
@{User}           Bhaskar    Nokia
&{logindetails}    username=bhaskar    password=bhaskar

*** Test Cases ***
Testcase_01
    Should Be Equal    ${Var1}    ${Var2}

Testcase-02
    Should Not Be Equal As Strings    @{User} [0]    @{User} [1]

Testcase_03
    Should Not Be Equal As Strings    &{logindetails} [username]    &{logindetails} [password]

Testcase_04
    Comparetwovariables

Testcase_05
    Get Current Date

Testcase_06
    Log To Console    Hello World
