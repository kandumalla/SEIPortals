*** Settings ***
Library  Selenium2Library
Library  String

*** Variables ***
${SearchSpecificationsPullTop} =    xpath=//span[@class='pull-top accordion-toggle ng-binding collapsed']
${BucketActionsPullTop} =   xpath =//span[@class='pull-top accordion-toggle collapsed ng-binding']
${ClientSelection} =  xpath = //option[@value='7-Eleven, Inc.']
${ZoneSelection} =  xpath = //option[@value='7-Eleven - Zone 1 - 2399']
${VIIDField} =  xpath = //input[@placeholder='vendorInvoiceId']
${TNSRField} =  xpath = //input[@placeholder='trackingId Or srNumber']
${TradeDropDown} =  xpath = //select[@ng-model='vm.bucket.bucketSearchSpec.trade']
${ServiceProviderNameField}=  xpath = //input[@placeholder='Service Provider Name']
${AccountGroupDropDown} =   xpath = //select[@ng-model='vm.bucket.bucketSearchSpec.accountGroup']]
${InvoiceSearchResultsList} =     xpath = //tr[@ng-repeat='invoice in vm.itemList']
${NeedsInitialReviewCheckBox} =  xpath= //input[@ng-model='vm.bucket.bucketSearchSpec.needsInitialReview']
${NeedsAdditionalReviewCheckBox} =  xpath= //input[@ng-model='vm.bucket.bucketSearchSpec.needsInitialReview']
${Searchbtn} =  xpath = //span[text()= 'Search']
${DFMRejectedDropDown} =   xpath = //select[@ng-model='vm.bucket.bucketSearchSpec.dfmRejected']
${JobNumberField}=  xpath = //input[@placeholder='jobNumber']
${POnumber}=    xpath = //input[@placeholder='poNumber']
${ProjectStatusSelection}=  xpath = //option[@value='Project Forum']
${AuditRuleDropDown} =   xpath = //select[@ng-model='vm.bucket.bucketSearchSpec.auditRulePassOrFail']
${ProcessButton} =  xpath = (//*[@title='Process this invoice'])[1]
#DataVariables
${ReadyToBillVIID} =   487932161
${ReadyToBillSRNumber} =  1-1953030794
${ReadyToBillTN} =  	491025721

*** Keywords ***

Open Search Specifications
    click element  ${Searchspecificationspulltop}
Open Bucket Actions
    click element  ${Bucketactionspulltop}
Select Client
    click element  ${Clientselection}
Select Zone
    click element  ${ZoneSelection}
Input VIID Number
    input text  ${VIIDField}    ${ReadyToBillVIID}
Input Tracking Number
    input text  ${TNSRField}    ${ReadyToBillTN}
Input SR Number
    input text  ${TNSRField}    ${ReadyToBillSRNumber}
Submit Search
    click button    ${searchbtn}
Check for Search Results
    element should be visible  ${InvoiceSearchResultsList}   'Search Returned No Records'

Process Invoice
    click element  ${processbutton}