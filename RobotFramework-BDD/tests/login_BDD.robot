*** Settings ***
Resource          ../resources.robot
Resource          ../pages/login_page.robot

Test Setup        Open Browser To Login Page
Test Teardown     Close Browser

*** Variables ***
${email}        knguyentrung@openwt.com
${password}     Admin.app@dn43
${profileName}  Kien Nguyen Trung


*** Test Cases ***
Sign In To Ebay Test
    Given user would land on the sign in page
    When user enters ${email} into user id text field
    And user enters ${password} into the pass text field
    And user clicks on the Sign in button
    Then user would get ${profileName} in the profile menu