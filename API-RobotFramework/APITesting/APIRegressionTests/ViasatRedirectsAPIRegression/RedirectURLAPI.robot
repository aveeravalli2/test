*** Settings ***
Library 	Collections
Library  RequestsLibrary

*** Variables ***
${SHORT_DOMAIN}    https://viasat.com
${FULL_DOMAIN}     https://www.viasat.com
${ENERGY_DOMAIN}   https://energy.viasat.com

#${save_now}  https://www.viasat.com/savenow/.html

*** Keywords ***

Get_Request_Redirect
  [Arguments]   ${request_name}   ${request_url}  ${path}  ${location}
  Create Session    ${request_name}     ${request_url}   verify=true
  ${response} =  GET On Session  ${request_name}    ${path}    allow_redirects=${False}
  Should Be Equal As Strings    ${response.status_code}     301
  ${location_header}    Get From Dictionary    ${response.headers}    Location
#  Log to console      ${location_header}
  Should Contain  ${location_header}  ${location}

Get_Request_Success
  [Arguments]   ${request_name}   ${request_url}   ${path}
  Create Session    ${request_name}     ${request_url}   verify=true
  ${response} =  GET On Session  ${request_name}    ${path}    allow_redirects=${False}
  Should Be Equal As Strings    ${response.status_code}     200

*** Test Cases ***

#Check 301 Redirect
#    Create Session    test  https://viasat.com
#    ${response}=   Get Request  test  ${null}    allow_redirects=${False}
#    Should Be Equal As Integers    ${response.status_code}    301
#    ${location_header}    Get From Dictionary    ${response.headers}    Location
#    Log to console      ${location_header}
#    Should Contain    ${location_header}    https://www.viasat.com/

Short Domain and No Path
    Get_Request_Redirect  short_nopath     ${SHORT_DOMAIN}   ${null}     https://www.viasat.com/
Short Domain and Root Path
    Get_Request_Redirect  short_rootpath   ${SHORT_DOMAIN}   /          https://www.viasat.com/
Short Domain and Path
    Get_Request_Redirect  short_path   ${SHORT_DOMAIN}   /savenow     https://www.viasat.com/satellite-internet/best-offer/?cid=TVN_US_2022_HURAFAPS49
Short Domain and Friendly
    Get_Request_Redirect  short_friendly   ${SHORT_DOMAIN}   /savenow/     https://www.viasat.com/savenow/
Short Domain and AEM
    Get_Request_Redirect  short_aem   ${SHORT_DOMAIN}   /about/      https://www.viasat.com/about/
Short Domain and PDF
    Get_Request_Redirect  short_pdf   ${SHORT_DOMAIN}   /files/assets/web/datasheets/FEC_IPCores_111.pdf     https://www.viasat.com/space-innovation/space-and-networking-technology/asics-and-ip-cores/

#Full Domain and AEM No path Test
#    Get_Request_Redirect  full_nopath_test   ${FULL_DOMAIN}   ${null}     https://www.viasat.com/
Full Domain and No Path
    Get_Request_Success   full_nopath     ${FULL_DOMAIN}   ${null}
Full Domain and Root Path
    Get_Request_Success   full_rootpath   ${FULL_DOMAIN}   /
Full Domain and Path
    Get_Request_Redirect  full_path   ${FULL_DOMAIN}   /savenow      https://www.viasat.com/satellite-internet/best-offer/?cid=TVN_US_2022_HURAFAPS49
Full Domain and Friendly
    Get_Request_Redirect  full_friendly   ${FULL_DOMAIN}   /savenow/      https://www.viasat.com/satellite-internet/best-offer/?cid=TVN_US_2022_HURAFAPS49
Full Domain and AEM
    Get_Request_Success   full_aem   ${FULL_DOMAIN}   /about/
Full Domain and PDF
    Get_Request_Redirect  full_pdf   ${FULL_DOMAIN}   /files/assets/web/datasheets/FEC_IPCores_111.pdf     https://www.viasat.com/space-innovation/space-and-networking-technology/asics-and-ip-cores/

Energy Domain and No Path
    Get_Request_Redirect  energy_nopath     ${ENERGY_DOMAIN}   ${null}     https://www.viasat.com/enterprise-and-mobility/industries/energy
Energy Domain and Root Path
    Get_Request_Redirect  energy_rootpath   ${ENERGY_DOMAIN}   /          https://www.viasat.com/enterprise-and-mobility/industries/energy
Energy Domain and Path
    Get_Request_Redirect  energy_path   ${ENERGY_DOMAIN}   /savenow     https://www.viasat.com/enterprise-and-mobility/industries/energy
Energy Domain and Friendly
    Get_Request_Redirect  energy_friendly   ${ENERGY_DOMAIN}   /savenow/     https://www.viasat.com/enterprise-and-mobility/industries/energy

Blog Full Domain parent
    Get_Request_Redirect  blog_parent     ${ENERGY_DOMAIN}   ${null}     https://www.viasat.com/enterprise-and-mobility/industries/energy
Blog Full Domain child
    Get_Request_Redirect  blog_child   ${ENERGY_DOMAIN}   /      https://www.viasat.com/enterprise-and-mobility/industries/energy
Blog Full Domain BR parent
    Get_Request_Redirect  blog_br_parent   ${ENERGY_DOMAIN}   /savenow    https://www.viasat.com/enterprise-and-mobility/industries/energy
Blog Full Domain BR child
    Get_Request_Redirect  blog_br_child   ${ENERGY_DOMAIN}   /savenow/    https://www.viasat.com/enterprise-and-mobility/industries/energy

html extensions root path
    Get_Request_Redirect  html_rootpath     ${FULL_DOMAIN}  /.html     https://www.viasat.com/
html extensions friendly
    Get_Request_Redirect  html_friendly   ${FULL_DOMAIN}   /savenow/.html       https://www.viasat.com/savenow/
html extensions aem path
    Get_Request_Redirect  html_aem   ${FULL_DOMAIN}   /about/.html    https://www.viasat.com/about/

other extension Full Domain
    Get_Request_Success   html_full_other     ${FULL_DOMAIN}   /etc.clientlibs/viasat/clientlibs/clientlib-base.css
other extension Short Domain
    Get_Request_Success   html_short_other   ${SHORT_DOMAIN}   /etc.clientlibs/viasat/clientlibs/clientlib-base.css

to help short domain and path
    Get_Request_Redirect  short_help_path    ${SHORT_DOMAIN}    /voice     https://help.viasat.com/s/article/Adding-Viasat-Voice
to help short domain and path root
    Get_Request_Redirect  short_help_path_friendly    ${SHORT_DOMAIN}       /voice/       https://www.viasat.com/voice/
to help full domain and path
    Get_Request_Redirect  blog_br_parent   ${FULL_DOMAIN}   /voice    https://help.viasat.com/s/article/Adding-Viasat-Voice
to help full domain and path root
    Get_Request_Redirect  blog_br_child   ${FULL_DOMAIN}    /voice/    https://help.viasat.com/s/article/Adding-Viasat-Voice
