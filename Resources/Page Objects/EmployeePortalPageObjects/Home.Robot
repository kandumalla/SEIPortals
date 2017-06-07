*** Settings ***
Library  Selenium2Library
Library  String
*** Variables ***
${HomeButton} =  //span[@ui-sref='main.home']
${UserButton} =  xpath=//*/div/div/ul/li[2]/span/span
${LogOutButton} =  xpath= //*/div[1]/div/div/ul/li[2]/ul/li/a
${SearchbyTracking/SR#Field} =   xpath=//input[@placeholder='Tracking number']

${SearchbyTracking/SRSearchbutton} =  xpath= //button[@ng-click="vm.goToSRDetails();"]
${SearchbyQuote#Field} =  xpath=//input[@placeholder='Quote number']
${SearchByQuoteSearchButton} =  xpath=//button[@ng-click="vm.goToQuoteDetails();"]
${SearchByLocationField} =  xpath=//input[@placeholder='Location number']
${SearchByLocationFieldSearchButton} =  xpath=//button[@ng-click="vm.goToLocationDetails();"]
${SearchByVIID/InvoiceID} =  xpath= //input[@placeholder='Vendor number']
${SearchByVIID/InvoiceIDSearchButton} =   xpath=//button[@ng-click="vm.goToInvoiceDetails();"]

#Data Variables
${TrackingNumber} =  74943328
${SRNumber} =  1-2251870240
${VIID} =  11980049
${InvoiceID} =
${LocationNumber} =  34222
${QuoteNumber} =  668700
${InvalidQuickSearchParameter} =  +

*** Keywords ***

Navigate Home
    click element  ${homebutton}
On Home Page Check
   wait until page contains element  ${homebutton}  10
Log Out
    click element  ${userbutton}
    click element  ${logoutbutton}
Search by Tracking Number
    wait until page contains element    ${searchbytracking/sr#field}   10
    input text     ${searchbytracking/sr#field}  ${trackingnumber}
    click element  ${searchbytracking/srsearchbutton}
Search by SR Number
    input text  ${searchbytracking/sr#field}    ${srnumber}
    click element  ${searchbytracking/srsearchbutton}
Search by Quote Number
    click element  ${searchbyquote#field}
    input text  ${quotenumber}
    click element  ${searchbyquotesearchbutton}
Search by Location

    input text  ${searchbylocationfield}  ${locationnumber}
    click element  ${searchbylocationfieldsearchbutton}
Search by VIID
    wait until page contains element  ${searchbyviid/invoiceid}  10
    input text  ${searchbyviid/invoiceid}    ${viid}
    click element  ${searchbyviid/invoiceidsearchbutton}
Search by Invoice ID
    click element  ${searchbyviid/invoiceid}
    input text  #${invoiceid}
    click element  ${searchbyviid/invoiceidsearchbutton}


Search by Tracking Number Check

    wait until page contains  ${trackingnumber}  10

Search by SR Number Check

    wait until page contains  ${srnumber}   10

Search by Quote Number Check
    wait until page contains  ${quotenumber}  10

Search by Location Number Check
    wait until page contains  ${locationnumber}  10

Search by VIID Check
    wait until page contains  ${viid}  10

Search by Invoice ID Check
    wait until page contains  #${invoiceid}  10



