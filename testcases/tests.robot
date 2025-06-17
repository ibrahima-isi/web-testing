*** Settings ***
Resource    ../resources/resources.robot

*** Test Cases ***
Test Remplissage Et Soumission Formulaire
    [Tags]    sanity
    ${expected_msg}=    Set Variable    Submitted Successfully
    Executer Scenario    ${expected_msg}
