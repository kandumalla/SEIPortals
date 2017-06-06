*** Settings ***
Library  Selenium2Library
Library  String
*** Variables ***
${SWMlink} =  xpath=//*[@id="ep-sidebar"]/div[1]/span[2]/span/a
${DisputesLink} =    xpath=//*[@id="ep-sidebar"]/div[2]/span[2]/span/a
${ReviewByRQMLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[2]/span/a
${PaidOnlyPendinglink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[3]/span/a
${CreateInvoicelink} =   xpath=//*[@id="ep-sidebar"]/div[3]/span[4]/span/a
${VisualAuditlink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[5]/span/a
${PMInvoiceBulkLoadLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[6]/span/a
${ReviewByAccountTeamLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[7]/span/a
${ReviewByAPLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[8]/span/a
${ReviewByFSRLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[9]/span/a
${BillingSpecialistReviewLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[10]/span/a
${UnderInvestigationAPLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[11]/span/a
${UnderInvestigationProgramsLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[12]/span/a
${UnderInvestigationBillingSpecialist} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[13]/span/a
${ReadyToBillLink} =  xpath=//*[@id="ep-sidebar"]/div[3]/span[14]/span/a
${AdvancedSearchLink} =     xpath=//*[@id="ep-sidebar"]/div[4]/span[2]/span/a
${FSRQuoteReviewLink} =  xpath=//*[@id="ep-sidebar"]/div[5]/span[2]/span/a
${ReportLink} =  xpath=//*[@id="ep-sidebar"]/div[6]/span[2]/span/a
${UserAdminTool} =  xpath=//*[@id="ep-sidebar"]/div[7]/span[2]/span/a

*** Keywords ***

Navigate To SWM Page
    click element  ${swmlink}
Navigate to Disputes Page
    wait until page contains element  ${disputeslink}
    click element  ${disputeslink}
Navigate To RQM Page
    click element   ${reviewbyrqmlink}

Naviagte To Paid Only Pending Page
    click element  ${paidonlypendinglink}
Navigate to Create Invoice Page
    click element   ${createinvoicelink}

Navigate to Visual Audit Page
    click element  ${visualauditlink}

Navigate to PM Invoice Bulk Load Page
    click element  ${pminvoicebulkloadlink}

Navigate to Review By Accounts Team Page
    click element  ${reviewbyaccountteamlink}

Navigate to Review By AP Page
    click element  ${reviewbyaplink}

Navigate to FSR Review Page
    click element  ${reviewbyfsrlink}

Naviagte To Billing Specialist Review Page
    click element  ${billingspecialistreviewlink}

Naviagte to Under Investigation AP Page
    click element   ${underinvestigationaplink}

Naviagte to Under Investigation Programs Page
    click element  ${underinvestigationprogramslink}

Navigate to Under Investiagation Billing Specialist Page
    click element  ${underinvestigationbillingspecialist}

Navigate to Ready To Bill Page
    click element  ${readytobilllink}

