*** Settings ***
Resource    abstract_page.robot

*** Variables ***
${electronicsMenu}      xpath://li/a[.='Electronics']
${electronicsLabel}     xpath://li/span[.='Electronics']
${categoryLabel}        xpath://ul/li[3]/a/span
${qtyTextBox}           id:qtyTextBox
${addToCartButton}      xpath://a/span/span[.='Add to cart']
${numAddedItemsToCart}  id:gh-cart-n


*** Keywords ***
user clicks on the Electronics menu
	Click On Element    ${electronicsMenu}

user would land on the Electronics page
    Verify Element Displayed    ${electronicsLabel}

user selects ${category} of electronics
	${categoryBegin}=       Set Variable   //ul/li/a[.='
    ${categoryEnd}=         Set Variable   ']
    ${selectedCategory}=    Set Variable   ${categoryBegin}${category}${categoryEnd}
    Click On Element    xpath:${selectedCategory}

user would land on the ${category} page
	Verify Element Displayed    ${categoryLabel}

user clicks on the ${index} gaming station category
	${gamingStationCategoryBegin}=    Set Variable   //div[@id='mainContent']/section[
    ${gamingStationCategoryEnd}=          Set Variable   ]//a/span[.='Go for it']
    ${selectedGamingStationCategory}=     Set Variable   ${gamingStationCategoryBegin}${index}${gamingStationCategoryEnd}
    Click On Element    xpath:${selectedGamingStationCategory}

user clicks on the ${index} play station category
	${playStationCategoryBegin}=        Set Variable   //ul/li[@class='carousel__snap-point'][
    ${playStationCategoryEnd}=          Set Variable   ]
    ${selectedplayStationCategory}=     Set Variable   ${playStationCategoryBegin}${index}${playStationCategoryEnd}
    Click On Element    xpath:${selectedplayStationCategory}

user selects the ${index} play station
	${selectedPlayStationBegin}=        Set Variable   //ul/li[@class='s-item s-item--large'][
    ${selectedPlayStationEnd}=          Set Variable   ]
    ${selectedPlayStation}=             Set Variable   ${selectedPlayStationBegin}${index}${selectedPlayStationEnd}
    Click On Element    xpath:${selectedPlayStation}

user sets ${quantity} in the quantity label for the play station
    Input Into Element    ${qtyTextBox}     ${quantity}

user clicks on the Add to cart button to add the selected play station
    Click On Element    ${addToCartButton}

user would get ${quantity} play station items in the cart
	Verify Element Text     ${numAddedItemsToCart}      ${quantity}