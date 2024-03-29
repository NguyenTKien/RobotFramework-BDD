*** Settings ***
Resource    abstract_page.robot

*** Variables ***
${searchKeyLabel}           xpath://input[@aria-label='Search for anything']
${categoryDropdown}         id:gh-cat
${searchButton}             xpath://input[@value='Search']
${conditionDropdown}        xpath://button/span/span[.='Condition']
${searchResultString}       xpath://ul/li[
${colorDropdown}            id:x-msku__select-box-1000
${qtyTextBox}               id:qtyTextBox
${addToCartButton}          xpath://a/span/span[.='Add to cart']
${numAddedItemsToCart}      id:gh-cart-n


*** Keywords ***
user enters ${searchKey} into Search for anything label
    Input Into Element      ${searchKeyLabel}   ${searchKey}

user selects ${category} in the category dropdown
    Select By Visible Text From Dropdown      ${categoryDropdown}    ${category}

user clicks on the Search button
	Click On Element    ${searchButton}

user selects the ${index} search result
	${a}=    Set Variable   //ul/li[
    ${b}=    Set Variable   ]//div[@class='s-item__title']
    ${c}=    Set Variable   ${a}${index}${b}
    Click On Element    xpath:${c}

user selects the ${index} color
	Switch Window Tab
    Select By Index From Dropdown       ${colorDropdown}        ${index}

user sets ${quantity} in the quantity label
    Input Into Element    ${qtyTextBox}     ${quantity}

user clicks on the Add to cart button
    Click On Element    ${addToCartButton}

user would get ${quantity} items in the cart
    Verify Element Text     ${numAddedItemsToCart}      ${quantity}