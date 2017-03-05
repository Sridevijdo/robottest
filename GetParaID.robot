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
Test Template     Anchor with ParagraphID Should Pass
Resource          resource.robot

*** Test Cases ***    AnchorText                  ParagraphID    AnchorName    AnchorTag
GEUTPID               Self Referencing Link       p1             n2a1          a
                      Self Referencing Index 2    p1             n22a2         a
                      Self Referencing Index 2    p1             n22a3         a

*** Keywords ***
Anchor with ParagraphID Should Pass
    [Arguments]    ${anchorText}    ${ParagraphID}    ${anchorName}    ${anchorTag}    # test with specified paragraph id should pass
    GEUTPID    ${ParagraphID}
