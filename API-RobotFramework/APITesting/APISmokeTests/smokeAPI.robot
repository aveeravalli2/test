*** Settings ***

Library  RequestsLibrary

*** Variables ***
${rural_internet}                https://www.viasat.com/content/viasat/us/en/satellite-internet/rural-internet.model.json
${excede_request}                        https://www.viasat.com/content/viasat/us/en/satellite-internet/exede.model.json
${wildblue_request}                      https://www.viasat.com/content/viasat/us/en/satellite-internet/wildblue.model.json
${affordable_connectivity}       https://www.viasat.com/content/viasat/us/en/satellite-internet/affordable-connectivity-program.model.json
${small_business}               https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet.model.json
${dish_satellite}               https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/dish-tv.model.json
${community_internet}           https://www.viasat.com/content/viasat/us/en/satellite-internet/global-connectivity/community-internet.model.json
${voip_model}                   https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/voip.model.json
*** Test Cases ***

Get_Request_rural_internet
  Create Session  ruralinternet    ${rural_internet}     verify=true
  ${response} =    GET On Session  ruralinternet  ${rural_internet}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  Get affordable high-speed satellite internet for harder-to-reach areas, including rural and remote locations.

Get_Request_excede
  Create Session  excede    ${excede_request}     verify=true
  ${response} =    GET On Session  excede  ${excede_request}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  Home internet service and customer support when you need it

Get_Request_wildblue
  Create Session  wildblue    ${wildblue_request}     verify=true
  ${response} =    GET On Session  wildblue   ${wildblue_request}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  Home internet service and customer support when you need it

Get_Request_affordable_connectivity
  Create Session  affordable    ${affordable_connectivity}     verify=true
  ${response} =    GET On Session  affordable  ${affordable_connectivity}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  Learn how to apply the ACP discount to your existing plan if you qualify.

Get_Request_small_business
  Create Session  smallbusiness    ${small_business}     verify=true
  ${response} =    GET On Session  smallbusiness  ${small_business}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  Viasat connects small businesses to fast, reliable satellite internet in areas where other options are slow, unavailable, or unaffordable

Get_Request_dish_satellite
  Create Session  dishsatellite    ${dish_satellite}     verify=true
  ${response} =    GET On Session  dishsatellite  ${dish_satellite}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  Combine Viasat Internet with DISH TV

Get_Request_community_internet
  Create Session  community_internet    ${community_internet}     verify=true
  ${response} =    GET On Session  community_internet  ${community_internet}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  We're helping foster digital inclusion where it's needed most

Get_Request_voip_model
  Create Session  voip    ${voip_model}     verify=true
  ${response} =    GET On Session  voip  ${voip_model}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}     Not a Viasat Internet customer yet? Shop internet plans to get started.