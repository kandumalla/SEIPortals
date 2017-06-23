*** Settings ***
Library  Selenium2Library
Library  String
*** Variables ***
${TrackingNumberSearchField} =   xpath= //input[@placeholder='Tracking/SR Number']
${InvoiceSearchButton} =    xpath = //button[@ng-click='vm.fetchSr()']
${CreateInvoiceButton} =  xpath= //button[@ng-click='vm.createInvoice()']
${InvoiceNumberField} =  xpath= //input[@ng-model='vm.invHeader.spInvoiceNumber']
${GLcodeField} =    xpath= //*[text()=' GL Code :']//following::input[1]
${GLcodeSelection} =  xpath= //a[@title='Miscellaneous Gas Expense (7633)']
${ServiceDateCalendarButton} =  xpath= //i[@class='fa fa-calendar']
${TodaysDateButton} =   xpath= //button[text()='Today']

${WorkDescriptionField} =    id=txtNote
${PaidandInvoicedRoutingCode} =  xpath= //input[@value='N']
${PaidOnlyRoutingCode} =  xpath= //input[@value='P']
${InvoiceOnlyRoutingCode} =  xpath=//input[@value='I']
${Addlineitembutton} =  xpath= //button[@ng-click='vm.addLineItem()']
${SPQuantityField} =  xpath=//input[@name='spQuantity']
${SaveLineItemsButton} =  xpath =//*[@class='fa fa-check']
#LineItems
${LaborLineItemSelection} =  xpath =//option[@label='LABOR']
${MaterialineItemSelection} =  xpath =//option[@label='MATERIAL]
${TaxLineItemSelection} =  xpath =//option[@label='TAX']
${ExpenseLineItemSelection} =  xpath =//option[@label='EXPENSE']
${AdjustmentLineItemSelection} =  xpath =//option[@label='Adjustment]
#LaborTypes
${TechnicianLabor} =  xpath = //option[@value='TECHNICIAN LABOR']
#
${UploadAttachmentButton} =  xpath =//input[@type='file']
${SaveInvoiceButton} =   xpath= //button[@ng-disabled='vm.isInvoiceAuditInProgress']
${SubmitInvoiceButton} =  xpath= //button[@class='btn btn-primary pull-left']
${AttachmentFile} =  C:/Users/dmohamed/Documents/Testing Environment/Testing Screenshots/Invoice Work Flow.PNG

${AttachmentElement} =  xpath= //span[@ng-if='attachmentReference.isStaged']
${InvoiceCreateSuccessfulalert} =  id=toast-container
${InvoiceCreateSuccessfullMessage} =  xpath= //*[contains(text(),'The invoice submitted successfully')]
${SubmitInvoiceW/warnings} =   xpath= //*[text()='Submit w/ Warnings']
#DataVariable
${TrackingNumberInvoice} =   93095528
*** Keywords ***
Input Tracking Number for Invoice
    wait until page contains element  ${TrackingNumberSearchField}
    input text  ${TrackingNumberSearchField}  93095528
Click Invoice Search Button
    wait until page contains element  ${InvoiceSearchButton}
    click element  ${InvoiceSearchButton}
Click Create New Invoice Button
   wait until page contains element  ${CreateInvoiceButton}  10
    click element    ${CreateInvoiceButton}
Input SP Invoice Number
    ${InvoiceNumberRandom}=  generate random string  8  [NUMBERS]
    input text   ${InvoiceNumberField}  ${InvoiceNumberRandom}
Input GL Code
    sleep   3s
    input text  ${GLcodeField}  7633
    sleep  3s
Select GL Code
    wait until page contains element  ${glcodeselection}
    click element  ${GLcodeselection}
Clear GL Code
    wait until page contains element   ${glcodefield}   10
    clear element text   ${glcodefield}
Open Date Select Celandar
    click element  ${servicedatecalendarbutton}
Select Todays Date
    click element  ${todaysdatebutton}
Input Work Description
    #clear element text  ${workdescriptionfield}
    input text  ${WorkDescriptionField}  "Automation Test Invoice"
Select GL Routing Code
    wait until element is visible  ${paidandinvoicedroutingcode}  10
    Click button  ${PaidandInvoicedRoutingCode}

Click Add Button
    click element  ${addlineitembutton}

Select Labor Line Item
    click element  ${laborlineitemselection}

Select Technician Labor
    click element  ${technicianlabor}

Input SP Quantity
    wait until page contains element   ${spquantityfield}
    clear element text   ${spquantityfield}
    input text   ${spquantityfield}   1

Click Save
    click element  ${savelineitemsbutton}
Upload Attachment
    sleep  5s
    choose file   ${uploadattachmentbutton}  ${attachmentfile}
    sleep  2s
Click Save Invoice
    click element  ${saveinvoicebutton}
    sleep  2s

Click Submit Invoice
    mouse over  ${submitinvoicebutton}
    sleep  2s
    click button  ${submitinvoicebutton}
   ${WarningCheck}=  run keyword and return status  wait until page contains element   ${SubmitInvoiceW/warnings}     10
   run keyword if   ${WarningCheck}  click element   ${SubmitInvoiceW/warnings}
Check invoice success alert
  wait until page contains element  ${invoicecreatesuccessfulalert}    10

  wait until page contains element  ${invoicecreatesuccessfullmessage}  20
Check missing invoice number alert
    wait until page contains element  ${invoicecreatesuccessfulalert}    10
    page should contain element  ${needinvoicealert}

Check missing service date alert
    wait until page contains element  ${invoicecreatesuccessfulalert}    10
    page should contain  ${needservicedatealert}

Check missing line item alert
    wait until page contains element  ${invoicecreatesuccessfulalert}    10
    page should contain  ${needlineitemalert}

Check missing GL routing alert
    wait until page contains element  ${invoicecreatesuccessfulalert}    10
    page should contain  ${needGLRoutingAlert}

Check missing GL code alert
    wait until page contains element  ${invoicecreatesuccessfulalert}    10
    page should contain  ${needGLCodeAlert}

Check missing invoice attachment alert
    wait until page contains element  ${invoicecreatesuccessfulalert}    10
    page should contain  ${needinvoiceattachmentalert}







