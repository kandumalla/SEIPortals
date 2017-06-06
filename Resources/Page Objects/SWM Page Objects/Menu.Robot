*** Settings ***
Documentation  Static menu web elements and functions
Library  Selenium2Library


*** Variables ***
${CustomerWorkPlans} =   //*[@id="menu"]/li[1]/a
${SiteWorkPlans} =  xpath=//*[@id="menu"]/li[2]/a
${SitesWithoutCoverage} =  xpath=//*[@id="menu"]/li[3]/a
${UploadScheduledWork} =  xpath=//*[@id="menu"]/li[4]/a
${CopyPlansToSites} =  xpath=//*[@id="menu"]/li[5]/a
${PendingApprovals} =  xpath=//*[@id="menu"]/li[6]/a
${Home} =  xpath=//*[@id="menu"]/li[7]/a
${ManageUsers}  =  xpath=//*[@id="menu"]/li[8]/a
${Usermenu}  =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/span
${LogOut}  =  xpath= //*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/ul/li/a

*** Keywords ***

Open User Menu
    click element  ${Usermenu}
Logout
    Open User Menu
    click element  ${LogOut}
Check Visibility of Home Page
    element should be visible   ${Home}
Navigate to Customer Work Plans
    Wait Until Page Contains Element    ${customerworkplans}  10
    click element  ${customerworkplans}
Navigate to Site Work Plans
    click element   ${siteworkplans}
Navigate to Sites Without Coverage
    click element   ${siteswithoutcoverage}
Navigate to Upload Scheduled Work
    click element   ${uploadscheduledwork}
Navigate to Copy Plans To Sites
    click element   ${copyplanstosites}
Navigate to Pending Approvals
    click element   ${PendingApprovals}
Navigate to Home Page
    click element  ${home}
Wait for Side Menu to Load
