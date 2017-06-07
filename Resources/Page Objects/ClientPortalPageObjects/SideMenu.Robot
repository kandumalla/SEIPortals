*** Settings ***
Library  Selenium2Library
Library  String

*** Variables ***
${RFSCreateLink} =  xpath = //a[@title='RFS Create']
${RFSSearchLink} =  xpath = //a[@href='#/rfssearch//']

*** Keywords ***
Click RFS Create Link
    click element  ${RFSCreatelink}
Click RFS Search Link
    click element  ${RFSSearchlink}

