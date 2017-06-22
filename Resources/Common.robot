*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin SWM Test

    open browser   about:blank    chrome
    set selenium implicit wait    20
    #maximize browser window
    go to  http://vixxoswmweb-test-2.us-east-1.elasticbeanstalk.com
Begin Employee Portal TEst
    open browser   about:blank    chrome
    set selenium implicit wait    20

    #maximize browser window
    go to  http://employeportalweb-dev.us-east-1.elasticbeanstalk.com/

End Web Test
    close browser


