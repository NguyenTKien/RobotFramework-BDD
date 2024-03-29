*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Click On Element
	[Arguments]    ${By_Locator}
	Wait Until Element Is Visible  ${By_Locator}
	Scroll Element Into View  ${By_Locator}
	Click Element  ${By_Locator}

Hover Over an Element
	[Arguments]    ${By_Locator}
	Mouse Over      ${By_Locator}

Input Into Element
	[Arguments]    ${By_Locator}  ${Text}
	Wait Until Element Is Visible  ${By_Locator}
	Clear Element Text  ${By_Locator}
	Input Text  ${By_Locator}  ${Text}

Get Element Text
	[Arguments]    ${By_Locator}
    Wait Until Element Is Visible  ${By_Locator}
    Get Text  ${By_Locator}

Verify Element Text
	[Arguments]    ${By_Locator}    ${expected_text}
	Wait Until Element Is Visible   ${By_Locator}
	Element Text Should Be      ${By_Locator}   ${expected_text}

Verify Element Displayed
	[Arguments]    ${By_Locator}
	Wait Until Element Is Visible   ${By_Locator}
	Element Should Be Enabled   ${By_Locator}

Select By Visible Text From Dropdown
	[Arguments]     ${By_Locator}     ${dropdown_value}
	Mouse Over      ${By_Locator}
    Select From List By Label     ${By_Locator}        ${dropdown_value}

Select By Index From Dropdown
	[Arguments]     ${By_Locator}     ${index}
	Mouse Over      ${By_Locator}
    Select From List By Index     ${By_Locator}        ${index}

Switch Window Tab
	Switch Window    new