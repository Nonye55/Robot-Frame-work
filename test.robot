*** Settings ***
Documentation    Testing what robot can do
Library          SeleniumLibrary  timeout=50s


*** Variables ***
${URL}  https://lamp-frontend.herokuapp.com
${Browser}  Chrome

*** Test Cases ***
Lunch Browser
    Open Browser    ${URL}  ${Browser}
    maximize browser window
login into the site
    Wait Until Page Contains GET STARTED
    Page Should Contain      GET STARTED
    Sleep                    5s
    Click Element           css=button[class='action-text btn-scroll mr-3 v-btn v-btn--outlined theme--dark v-size--default'] .v-btn__content
Terminate Browser instance
    close Browser
*** Keywords ***
#Provided precondition
    #Setup system under test

#login into the site
#    click button LOGIN