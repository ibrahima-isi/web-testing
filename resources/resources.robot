*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobject/locator.py
Variables    ../pageobject/variable.py

*** Keywords ***
Executer Scenario
    [Arguments]    ${expected_msg}
    Ouvrir le navigateur
    Remplir le formulaire
    Soumettre le formulaire
    Verifier message de reussite    ${expected_msg}
    Fermer le navigateur


Ouvrir le navigateur
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    5
    # ${lang}=    Execute Javascript    return navigateur.language || navigator.userLanguage;
    # ${lang_code}=

Verifier message de reussite
    [Arguments]    ${expected_msg}
    Set Browser Implicit Wait  5
    Page Should Contain    ${expected_msg}

Remplir le formulaire
    Input Text    ${NAME}
    Select From List By Value    ${SELECT}    item2
    Click Element    ${BOX3}
    Click Element    ${BOX1}
    Input Text    ${DATE_PICK}    ${DATE}

Soumettre le formulaire
    Click Button    ${BTN_SUBMIT}

Fermer le navigateur
    Set Selenium Implicit Wait    5
    Close Browser