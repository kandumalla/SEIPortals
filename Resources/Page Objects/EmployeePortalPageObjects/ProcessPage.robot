*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Library  String

*** Variables ***
${NextInQueue}=  xpath = //button[@class='btn btn-primary btn-sm pull-right ng-scope']
${ProcessThisInvoiceButton}=   xpath =  (//*[@title='Process this invoice'])[1]
#//*[@id="tableConvert"]/tbody/tr[1]/td[15]/div/span[2]  (//*[@title='Process this invoice'])[1]
${OpenFullInvoiceDetails}=  xpath = //*[@id="collapseinvveninfo"]/ul/li[4]/a[1]
${EditInvoiceButton} =  xpath = //*[@id="collapseinvveninfo"]/ul/li[4]/a[2]
${SelectGroupAction} =  xpath = //*[@id="collapseStatusChange"]/ul/li[1]/select
${ReviewByAP} =  xpath = //*[@id="collapseStatusChange"]/ul/li[1]/select
${SelectAgreeAction}=  xpath = //*[@id="collapseStatusChange"]/ul/li[1]/select
${InvoiceNoteField} =  id = invoiceNote
${InvoiceNotes} =  InvoiceTestNote
${InvoiceNote} =  xpath = //*[@id="invoiceNote"]
${InvoiceActionSave} =  xpath =  //span[@class='margin-left-5']
#//*[@id="collapseStatusChange"]/ul/li[3]/button/span[2]
${ProcessDropdown} =    xpath = //select[@class='form-control ng-pristine ng-valid ng-empty ng-touched']

*** Keywords ***
#Provided precondition
#Setup system under test
 Click Next Queue button
    click button  ${NextInQueue}

Click Process This Invoice
    wait until page contains element  ${ProcessThisInvoiceButton}   15
    click element  ${ProcessThisInvoiceButton}

Select Process Dropdown
     click element  ${ProcessDropdown}

Click Open Full Invoice Details
    click element  ${OpenFullInvoiceDetails}

Click Edit Invoice Button
    click element  ${EditInvoiceButton}

Click Select Group Action
     wait until element is enabled  id =  ${SelectGroupAction}
     select from list  ${SelectGroupAction}

Select Group Action Agree
     select from list  ${SelectAgreeAction}

Select Group Action ReviewByAP
     select from list  ${ReviewByAP}

Enter Invoice Note
     input text  ${InvoiceNoteField}  ${InvoiceNotes}

Click Invoice Action Save button
     wait until page contains element  ${InvoiceActionSave}  10
     double click element  ${InvoiceActionSave}
