*** Settings ***
Library  RequestsLibrary

*** Variables ***
${VIASAT_AD_TRY}  https://www.viasat.com/content/viasat/us/en/advertising/try-it.model.json
${VIASAT_AD_WATCH}  https://www.viasat.com//content/viasat/us/en/advertising/watch-it.model.json
${VIASAT_AD_CONTACT}  https://www.viasat.com//content/viasat/us/en/advertising/contact-us.model.json


*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

viasat_ad_try_request
    Get_Request  viasat_ad_try   ${VIASAT_AD_TRY}     Users choose what types of ads they want to see
viasat_ad_watch_request
    Get_Request  viasat_ad_watch   ${VIASAT_AD_WATCH}     Build relationships wherever your customers are
viasat_ad_contact_request
    Get_Request  viasat_ad_contact   ${VIASAT_AD_CONTACT}    Connect with us
