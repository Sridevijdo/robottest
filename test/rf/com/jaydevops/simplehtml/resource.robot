*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${BROWSER}        chrome
${DELAY}          0
${ANCHORS URL}    https://vairamsvsjdo.github.io/simplehtml5/anchors.html
${WELCOME URL}    https://vairamsvsjdo.github.io/simplehtml5/index.html

*** Keywords ***
Open Welcome Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Location Should Contain    ${WELCOME URL}

Go To Anchors Page
    Go To    ${ANCHORS URL}
    Anchors Page Should Be Open

Anchors Page Should Be Open
    Title Should Be    Simple HTML5 - Anchor Pages

..Get Element Under Test By ID
GEUTID
    [Arguments]    ${elementID}
    ${elem} =	Get WebElement	id=${elementID}

..Get Element Under Test By Name
GEUTN
    [Arguments]    ${name}
    ${elem} =	Get WebElement	name=${elementName}

..Get Element Under Test By XPath
GEUTX
    [Arguments]    ${element}
    ${elem} =	Get WebElementXpath	xpath=${elementXpath}

..Get Element Under Test By Content
..TODO: complete the test
..GEUTC
..    [Arguments]    ${elementText}

