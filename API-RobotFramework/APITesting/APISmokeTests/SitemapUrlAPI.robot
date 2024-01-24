*** Settings ***
Library       RequestsLibrary
Library       XML
Library       Collections
Library       String
Library       SeleniumLibrary
*** Variables ***
${Prod_sitemap_url}                 https://www.viasat.com/sitemap.xml
${Stage_sitemap_url}                 https://stage.web.viasat.com/sitemap.xml
${Dev_sitemap_url}                 https://dev.web.viasat.com/sitemap.xml
*** Keywords ***
Extract URLs from Viasat Sitemap
    [Arguments]  ${sitemap_url}
  Create Session  sitemap    ${sitemap_url}     verify=true
  ${response} =    GET On Session  sitemap  ${sitemap_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${json_data} =  Parse XML  ${response.content}
  ${elements}    Get Elements Texts   ${json_data}  url
  ${url1}=  Set Variable  ${elements}[0]
  Log to console    ${url1}
  ${url_main}=   get substring   ${url1}    0   -11
  Open Browser    ${url_main}         headlesschrome
  Sleep  5s
  ${content_text}=  Get Text  //h1[@class="title__text"]
  Should contain    ${content_text}  Get high-speed satellite internet wherever you live
  Close Browser

*** Test Cases ***

Prod Sitemap Url test
    Extract URLs from Viasat Sitemap    ${Prod_sitemap_url}

Stage Sitemap Url test
    Extract URLs from Viasat Sitemap    ${Stage_sitemap_url}

Dev Sitemap Url test
    Extract URLs from Viasat Sitemap    ${Dev_sitemap_url}
