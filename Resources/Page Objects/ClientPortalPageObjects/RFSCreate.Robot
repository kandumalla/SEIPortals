*** Settings ***
Library  Selenium2Library
Library  String
Library  BuiltIn
*** Variables ***
${LocationSearchField} =    xpath = //input[@placeholder='Location Number']
${LocationSearchbtn} =  xpath = //button[@class='btn btn-primary btn-search']
${CreateNewRFSbtn} =    xpath = //*[@ng-click='vm.addRFS(locationAddressInfo)']
${SubmitterNameField}=  xpath = //input[@placeholder='Submitter Name']
${ProblemAreaDropDown} =   xpath = //select[@ng-model='addRFS.problemArea']
${ProblemAreaSelection} =    xpath = //option[@value='VR TLS/Leak Detection Alarms']
${ProblemTypeSelection} =    xpath = //option[@value='Sensor']
${ProblemDecriptionSelection} =  xpath = //option[@value='Fuel Alarm - P1']
${RFSCreateSubmitButton} =  xpath = //button[@type='submit']
${ProblemDescriptionField} =   id=txtProbDesc
${SRDetailPageTitle} =  xpath =//*[text()='Tracking/SR Number:']
${SRDetailPageTN/SRnumber} =  xpath = //*[text()='Tracking/SR Number:']/../span
#xpath= (//span[@class='ng-binding'])[2]
#
#(//span[@class='ng-binding'])[2]
#xpath = //*[text()='Tracking/SR Number:']//following::span[1]
${TradeDescription} =  xpath = //*[text()='Trade/Description:']//following::span[1]
#xpath =//div/ul[@class='list-group col-md-4'][1]/li[@class='list-group-item'][1]/span[@class='ng-binding']
#xpath =//span[@data-target='#collapseServiceRequestHeader']//following::span[3]

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
Input Submitter Name
    input text  ${submitternamefield}   ${submittername}
Input Problem Description Text
    input text  ${problemdescriptionfield}  "Automation Test"

Click Submit New RFS
    click button  ${RFSCreateSubmitButton}
Assert RFS Was Created
    element should be visible  ${SRDetailPageTitle}  10

Get Tracking Number
    wait until element is visible   ${SRDetailPageTN/SRnumber}   10
   ${SRDetailPageTN/SRnumberText}=    get webelements   ${SRDetailPageTN/SRnumber}
   ${SRDetailPageTN/SRnumberTitle}  get text  ${SRDetailPageTitle}
   ${TradeDescriptionText}  get text  ${TradeDescription}
   log  ${SRDetailPageTN/SRnumberTitle}
   log many  ${SRDetailPageTN/SRnumberText}
   log many  ${TradeDescriptionText}






