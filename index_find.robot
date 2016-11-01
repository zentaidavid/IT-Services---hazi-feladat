*** Settings ***
Documentation    Suite description
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Test title
    [Documentation]  Basic info
    [Tags]  Find "baleset"
    Open Browser  http://www.index.hu  ff
    Maximize Browser Window
    Wait Until Page Contains  Szerzői jog
    Click Link  xpath=//a[@id="icon-nagyito"]
    Input Text  id=fixedheader-dropdown-kereses  baleset
    Wait Until Page Contains  baleset
    Press Key  id=fixedheader-dropdown-kereses  \\13
    Wait Until Page Contains  Sajnos nem találtunk
    Close Browser

*** Keywords ***