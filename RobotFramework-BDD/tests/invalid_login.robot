*** Settings ***
Documentation     A test suite containing tests related to invalid login.
...
...               These tests are data-driven by their nature. They use a single
...               keyword, specified with Test Template setting, that is called
...               with different arguments to cover different scenarios.
...
...               This suite also demonstrates using setups and teardowns in
...               different levels.

Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
Test Template     Login With Invalid Credentials Should Fail
Resource          ../resources.robot
Resource          ../pages/abstract_page.robot


*** Test Cases ***               USER NAME                  PASSWORD
Invalid Username                 ktrung123@openwt.com       ${VALID PASSWORD}
Invalid Password                 ${VALID USER}              123@42341
#Invalid Username And Password    invalid          whatever
#Empty Username                   ${EMPTY}         ${VALID PASSWORD}
#Empty Password                   ${VALID USER}    ${EMPTY}
#Empty Username And Password      ${EMPTY}         ${EMPTY}

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Login Should Have Failed

Login Should Have Failed
    Error Message       Invalid username or password. Please try again.