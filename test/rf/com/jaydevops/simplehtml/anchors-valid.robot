*** Settings ***
Documentation     A test suite containing tests related to invalid login.
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
Test Template     Anchor with Valid Text ID Name XPath Should Pass
Resource          resource.robot
$testAnchorText    Self Referencing Link
*** Test Cases ***               AnchorText               AnchorID    AnchorName    XPath
Valid AnchorName                 Self Referencing Link    a1          na1           //div[@id='a1']

*** Keywords ***
Anchor with Valid Text ID Name XPath Should Pass
    [Arguments]    ${anchorText}    ${anchorID}    ${anchorName}    ${anchorXpath}
    GEUT   ${anchorID}
