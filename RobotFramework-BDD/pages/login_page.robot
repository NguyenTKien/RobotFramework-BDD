*** Settings ***
Resource    abstract_page.robot

*** Variables ***
# Objects used to create an login employee app
${signInPage}           xpath://form/h4
${emailOrUsername}      id:email
${passW}                id:password
${logInButton}          xpath://button[@type='submit']
# Object used for Home Page
${profileNameLocator}   xpath://app-my-account//span

*** Keywords ***
user would land on the sign in page
	Verify Element Displayed    ${signInPage}

user enters ${email} into user id text field
    Input Into Element    ${emailOrUsername}    ${email}

user enters ${password} into the pass text field
	Input Into Element    ${passW}      ${password}

user clicks on the Sign in button
	Click On Element    ${logInButton}

user would get ${profileName} in the profile menu
	Verify Element Text    ${profileNameLocator}    ${profileName}