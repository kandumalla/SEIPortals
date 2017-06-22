*** Settings ***
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/Login.robot
Resource  ../Resources/Page Objects/ClientPortalPageObjects/Home Page.Robot
Resource  ../Resources/Page Objects/ClientPortalPageObjects/InvoiceSearch.Robot
Resource  ../Resources/Page Objects/ClientPortalPageObjects/RFSCreate.Robot
Resource  ../Resources/Page Objects/ClientPortalPageObjects/SideMenu.Robot

*** Keywords ***

Navigate to RFS Create Page
    Click RFS Create Link
    Enter Location Number
    Click Search Button
    Click Create New RFS Button
Enter RFS Details
      Input Submitter Name
      Select Problem Area from drop down
      Select Problem Type from drop down
      Select Problem Description from drop down
      Input Problem Description Text

Choose Problem Area
    Select Problem Area from drop down
Choose Problem Type
    Select Problem Type from drop down
Choose Problem Description
    Select Problem Description from drop down
Enter Problem Description
    Input Problem Description Text
Submit RFS
    Click Submit New RFS
Check RFS Create Success
    Assert RFS Was Created
    Get Tracking Number

