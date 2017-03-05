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
    ${elem} =    Get WebElement    id=${elementID}

..Get Element Under Test By Name

GEUTN
    [Arguments]    ${ElementName}
    ${elem} =    Get WebElement    name=${elementName}

..Get Element Under Test By XPath

GEUTX
    [Arguments]    ${elementXpath}
    ${elem} =    Get WebElement    xpath=${elementXpath}

..TODO: complete the test

..Get Element Under Test By Content

GEUTC
    [Arguments]    ${elementValue}
    ${elem} =    Get Text    link=${elementValue}

..Get Element Under Test By Paragraph ID

GEUTPID
    [Arguments]    ${elementPID}
    ${elem} =    Get WebElements    id=${elementPID}

..Get Element Under Test By Tag

GEUTT
    [Arguments]    ${elementTag}    ${Expected}
    ${elem} =    Element Should Contain    tag=${elementTag}    ${Expected}

..Get Element Under Test By ClassName

GEUTClass
    [Arguments]    ${elementCss}
    ${elem} =    Get WebElement    css=${div.elementCss}

..Get Element Under Test By DivID

GEUTDivId
    [Arguments]    ${elementID}
    ${elem} =    Get WebElement    id=${elementID}

..Get Element Under Test By ID inside DivID

GEUTIDDivId
    [Arguments]    ${elementDivID}    ${elementID}
    ${elem} =    Element Should Contain    id=${elementDivID}    id=${elementID}
