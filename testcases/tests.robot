*** Settings ***
Resource    ../resources/resources.robot

*** Test Cases ***
Test Remplissage Et Soumission Formulaire
    [Tags]    sanity
    ${expected_msg}=    Set Variable    "Le message"
    Executer Scenario    ${expected_msg}
