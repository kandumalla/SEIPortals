*** Settings ***
Library  Selenium2Library
Library  String
*** Variables ***
${LocationSearchField} =    xpath = //input[@placeholder='Location Number']
${LocationSearchbtn} =  xpath = //button[@class='btn btn-primary btn-search']
${CreateNewRFSbtn} =    xpath = //*[@ng-click='vm.addRFS(locationAddressInfo)']
${ProblemAreaDropDown} =   xpath = //select[@ng-model='addRFS.problemArea']
${ProblemAreaSelection} =    xpath = //option[@value='VR TLS/Leak Detection Alarms']
${ProblemTypeSelection} =    xpath = //option[@value='Sensor']
${ProblemDecriptionSelection} =  xpath = //option[@value='Fuel Alarm - P1']
${RFSCreateSubmitButton}  =  xpath = //button[@type='submit']
${ProblemDescriptionField}  =  id=txtProbDesc
${SRDetailPageTitle} =  xpath =//span[@data-target='#collapseServiceRequestHeader']


#DataVariable
${LocationNumber} =   33168
${SubmitterName} =  Automated Test Guy
*** Keywords ***
Enter Location Number
    input text  ${LocationSearchField}  ${LocationNumber}
Click Search Button
    click button  ${LocationSearchbtn}

Click Create New RFS Button
    wait until element is visible   ${CreateNewRFSbtn}  10
    click element  ${CreateNewRFSbtn}
Click Problem Area Dropdown
    click element  ${ProblemAreaDropDown}
Select Problem Area from drop down
    click element   ${ProblemAreaSelection}
Select Problem Type from drop down
    click element   ${ProblemTypeSelection}
Select Problem Description from drop down
    click element  ${ProblemDecriptionSelection}
Input Problem Description Text
    input text  ${problemdescriptionfield}  "Automation Test"

Click Submit New RFS
    click button  ${RFSCreateSubmitButton}
Assert RFS Was Created
    element should be visible  ${SRDetailPageTitle}
