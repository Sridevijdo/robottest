*** Settings ***
Documentation     A test suite containing tests related to webpage elements.
...
...               These tests are data-driven by their nature. They use a single
...               keyword, specified with Test Template setting, that is called
...               with different arguments to cover different scenarios.
...
...               This suite also demonstrates using setups and teardowns in
...               different levels.
Suite Setup       Open Welcome Page
Suite Teardown    Close Browser
Test Setup        Go To Anchors Page
Test Template     Text with anchorTag and Expected Should Pass
Resource          resource.robot

*** Test Cases ***    AnchorText              AnchorTag    Expected
GEUTT                 Anchors within a div    div          Anchors within a div

*** Keywords ***
Text with anchorTag and Expected Should Pass
    [Arguments]    ${anchorText}    ${anchorTag}    ${Expected}    # test with specified tag should pass
    GEUTT    ${anchorTag}    ${Expected}
