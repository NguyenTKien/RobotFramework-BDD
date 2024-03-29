*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${DELAY}                200ms
${LOGIN URL}            https://owt-employee-app-fe.web.app/
${WELCOME URL}
${BROWSER}              Firefox
#${LOGIN_PAGE}     ${MAIN_PAGE}/accounts/login/
${emailOrUsername}      id:email
${passWordLocator}      id:password
${logInButton}          xpath://button[@type='submit']
${VALID USER}           knguyentrung@openwt.com
${VALID PASSWORD}       Admin.app@dn43
${errorMessageLocator}  xpath://h2[@id='swal2-title']

*** Keywords ***
Open Main Page Using Chrome Browser
  Open Browser    ${LOGIN URL}    ${BROWSER}
  Maximize Browser Window

Open Browser To Login Page
  Open Browser    ${LOGIN URL}   ${BROWSER}
  Maximize Browser Window
  Set Selenium Speed     ${delay}
  Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Employee App

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page

Input Username
    [Arguments]    ${username}
    Clear Element Text  ${emailOrUsername}
    Input Text          ${emailOrUsername}    ${username}

Input Password
    [Arguments]    ${password}
    Clear Element Text  ${passWordLocator}
    Input Text          ${passWordLocator}      ${password}

Submit Credentials
    Click Button    ${logInButton}

Error Message
    [Arguments]    ${errorMessage}
    Element Text Should Be      ${errorMessageLocator}     ${errorMessage}