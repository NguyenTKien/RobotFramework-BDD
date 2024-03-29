*** Settings ***
Resource    abstract_page.robot

*** Variables ***
${fashionMenu}      xpath://li/a[.='Fashion']
${categoryHeader}   xpath://h1/span[@class='b-pageheader__text']
${qtyTextBox}           id:qtyTextBox
${addToCartButton}      xpath://a/span/span[.='Add to cart']
${numAddedItemsToCart}  id:gh-cart-n

*** Keywords ***
user hover over on the Fashion menu
    Hover Over An Element    ${fashionMenu}

user selects ${category} category of fashion
    ${fashionCategoryBegin}=        Set Variable   //li/a[.='
    ${fashionCategoryEnd}=          Set Variable   ']
    ${fashionCategory}=     Set Variable   ${fashionCategoryBegin}${category}${fashionCategoryEnd}
    Click On Element    xpath:${fashionCategory}

user would land on the ${category} page of fashion menu
    Verify Element Text    ${categoryHeader}        ${category}

user selects the ${index} result of the selected category
    ${selectedFashionCategoryBegin}=        Set Variable   //div[@class='b-visualnav__grid']/a[
    ${selectedFashionCategoryEnd}=          Set Variable   ]
    ${selectedFashionCategory}=     Set Variable   ${selectedFashionCategoryBegin}${index}${selectedFashionCategoryEnd}
    Click On Element    xpath:${selectedFashionCategory}

user selects the ${index} result of the selected fashion item
    ${selectedFashionBegin}=        Set Variable   //ul[@class='carousel__list']/li[
    ${selectedFashionEnd}=          Set Variable   ]
    ${selectedFashion}=             Set Variable   ${selectedFashionBegin}${index}${selectedFashionEnd}
    Click On Element    xpath:${selectedFashion}

user sets ${quantity} for the selected fashion item
    Input Into Element    ${qtyTextBox}     ${quantity}

user clicks on the Add to cart button to add the selected fashion category
    Click On Element    ${addToCartButton}

user would get ${quantity} added fashion items in the cart
    Verify Element Text     ${numAddedItemsToCart}      ${quantity}
