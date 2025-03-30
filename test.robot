*** Settings ***
Library   Selenium2Library

*** Variables ***
${browser}   chrome
${url}   https://google.com/


*** Keywords ***
Go to Google
   Open Browser   ${url}   ${browser}
Deny rights
   Wait Until Element Is Visible    xpath://*[contains(text(), 'Hylkää kaikki')]/parent::button
   Click Button   xpath://*[contains(text(), 'Hylkää kaikki')]/parent::button
Search for robot
   Wait Until Element Is Visible    name=q
   Input Text   name=q  robot
   Press Keys   name=q  ENTER
   Wait Until Element Is Visible  name=qq

*** Test Cases ***
Google Index
   Go to Google
   Deny rights
   Search for robot