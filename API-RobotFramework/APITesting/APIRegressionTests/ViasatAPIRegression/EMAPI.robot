*** Settings ***

Library  RequestsLibrary

*** Variables ***
${VIASAT_US_EN_E&M_INDUSTRIES}     https://www.viasat.com//content/viasat/us/en/enterprise-and-mobility/industries.model.json
${EM_INDUSTRIES_CA}               https://www.viasat.com//content/viasat/us/en/enterprise-and-mobility/industries/commercial-aviation.model.json
${EM_INDUSTRIES_CA_PASSENGER}    https://www.viasat.com//content/viasat/us/en/enterprise-and-mobility/industries/commercial-aviation/passenger-experience.model.json
${EM_INDUSTRIES_CA_FLIGHT}            https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/commercial-aviation/flight-operations.model.json
${EM_INDUSTRIES_CA_FLIGHT_AERO}       https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/commercial-aviation/flight-operations/aerodocs.model.json
${EM_INDUSTRIES_CA_RESOURCES}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/commercial-aviation/resources.model.json
${EM_INDUSTRIES_CA_SUPPORT}            https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/commercial-aviation/support-services.model.json
${EM_INDUSTRIES_CA_INFLIGHT}          https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/commercial-aviation/inflight-advertising.model.json
${EM_INDUSTRIES_BA}      https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/business-aviation.model.json
${EM_INDUSTRIES_BA_INFLIGHT}           https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/business-aviation/inflight-entertainment.model.json
${EM_INDUSTRIES_BA_PARTNERS}           https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/business-aviation/partners.model.json
${EM_INDUSTRIES_BA_RESOURCES}       https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/business-aviation/resources.model.json
${EM_INDUSTRIES_BA_SUPPORT}      https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/business-aviation/support-services.model.json
${EM_INDUSTRIES_ENERGY}  https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/energy.model.json
${EM_INDUSTRIES_ENERGY_MARITIME}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/energy/energy-maritime.model.json
${EM_INDUSTRIES_ENERGY_SOLUTIONS}   https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/energy/energy-solutions.model.json
${EM_INDUSTRIES_ENERGY_SOLUTIONS_MANAGED}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/energy/energy-solutions/managed-comms.model.json
${EM_INDUSTRIES_ENERGY_SOLUTIONS_IIOT}       https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/energy/energy-solutions/apps-and-iiot.model.json
${EM_INDUSTRIES_ENERGY_SOLUTIONS_SYSTEM}             https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/energy/energy-solutions/systems-integration.model.json
${EM_INDUSTRIES_ENERGY_OIL}   https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/energy/oil-and-gas.model.json
${EM_INDUSTRIES_MARITIME}     https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/maritime.model.json
${EM_INDUSTRIES_MARITIME_PASSENGER}   https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/maritime/passenger.model.json
${EM_INDUSTRIES_MARITIME_COMMERCIAL}              https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/maritime/commercial.model.json
${EM_INDUSTRIES_MARITIME_LEISURE}               https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/maritime/leisure.model.json
${EM_INDUSTRIES_MARITIME_RESOURCES}  https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/industries/maritime/resources.model.json
${EM_SOLUTIONS}     https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions.model.json
${EM_SOLUTIONS_COMMERCIAL}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/commercial-aviation-connectivity.model.json
${EM_SOLUTIONS_MARITIME}  https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/maritime-connectivity.model.json
${EM_SOLUTIONS_CYBERSECURITY}         https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/cybersecurity.model.json
${EM_SOLUTIONS_INTELLIE}          https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/intelie.model.json
${EM_SOLUTIONS_ENTERPRISE}            https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/enterprise.model.json
${EM_SOLUTIONS_ENTERPRISE_CLOUD}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/enterprise/direct-cloud-connect.model.json
${EM_SOLUTIONS_ENTERPRISE_GOWIFI}   https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/enterprise/managed-wifi/gowifi-navy.model.json
${EM_SOLUTIONS_ENTERPRISE_SDWAN}     https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/enterprise/sd-wan.model.json
${EM_SOLUTIONS_ENTERPRISE_CYBERSECURITY}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/enterprise/cybersecurity.model.json
${EM_SOLUTIONS_ENTERPRISE_MOBILE}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/mobile-satellite-terminals.model.json
${EM_SOLUTIONS_ENTERPRISE_AD_TRY}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/advertising/try-it.model.json
${EM_SOLUTIONS_ENTERPRISE_AD_WATCH}             https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/advertising/watch-it.model.json
${EM_SOLUTIONS_ENTERPRISE_AD_CONTACT}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/solutions/advertising/contact-us.model.json
${EM_AVIATION}  https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/aviation.model.json
${EM_OFFERS_SAVE50}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/offers/save-50.model.json
${EM_OFFERS}        https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/offers.model.json
${EM_GLOBAL_COMMUNITY}    https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/global-connectivity/community-internet.model.json
${EM_GLOBAL}              https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/global-connectivity.model.json
${EM_ADVERTISE}   https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/advertise-with-us.model.json
${EM_ADVERTISE_SPONSER}        https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/advertise-with-us/sponsored-access-try-ads.model.json
${EM_ADVERTISE_SPONSER_ACCESS}      https://www.viasat.com/content/viasat/us/en/enterprise-and-mobility/advertise-with-us/sponsored-access-watch-adds.model.json



*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

viasat_us_EM_request
    Get_Request  viasat_us_em_insustries   ${VIASAT_US_EN_E&M_INDUSTRIES}    Viasat delivers high-capacity, smart-connectivity for people working in the hardest-to-reach places
EM_Industries_CA_request
    Get_Request  em_insustries_ca     ${EM_INDUSTRIES_CA}     Our commercial aviation solutions
EM_Industries_CA_Passenger_request
    Get_Request   em_insustries_ca_passenger    ${EM_INDUSTRIES_CA_PASSENGER}    Set yourself apart with a dynamic passenger
EM_Industries_CA_flight_request
    Get_Request  em_insustries_ca_flight   ${EM_INDUSTRIES_CA_FLIGHT}   Contact Viasat today to learn how you can enhance flight operations with connected solutions
EM_Industries_CA_flight_aero_request
    Get_Request  em_insustries_ca_flight_aero   ${EM_INDUSTRIES_CA_FLIGHT_AERO}   Would you like a web demo of Aerodocs
EM_Industries_CA_resources_request
    Get_Request   em_insustries_ca_resources    ${EM_INDUSTRIES_CA_RESOURCES}    Viasat solutions help you streamline your flight operations
EM_Industries_CA_support_request
    Get_Request  em_insustries_ca_support   ${EM_INDUSTRIES_CA_SUPPORT}   Contact Viasat today to learn about Viasat's total care support solutions for aviation.
EM_Industries_CA_Inflight_request
    Get_Request  em_insustries_ca_inflight   ${EM_INDUSTRIES_CA_INFLIGHT}   Looking for an innovative onboard advertising solution
EM_Industries_BA_request
    Get_Request   em_industries_ba    ${EM_INDUSTRIES_BA}    Unbeatable performance
EM_Industries_BA_Inflight_request
    Get_Request   em_industries_ba_inflight    ${EM_INDUSTRIES_BA_INFLIGHT}    With Viasat, you can watch TV, sports, news and more when flying business jets
EM_Industries_BA_partners_request
    Get_Request  em_industries_ba_partners   ${EM_INDUSTRIES_BA_PARTNERS}  Interested in partnering with us
EM_Industries_BA_resources_request
    Get_Request   em_industries_ba_resources     ${EM_INDUSTRIES_BA_RESOURCES}    With Viasat Select Ka-band Direct Service
EM_Industries_BA_support_request
    Get_Request  em_industries_ba_support    ${EM_INDUSTRIES_BA_SUPPORT}    Total care support from initiation to operationalization and beyond
EM_Industries_energy_request
    Get_Request  em_industries_energy   ${EM_INDUSTRIES_ENERGY}   Intelie by Viasat is a machine learning platform that enables powerful analytics
EM_Industries_energy_maritime_request
    Get_Request  em_industries_energy_maritime  ${EM_INDUSTRIES_ENERGY_MARITIME}   Viasat is your optimal partner for achieving ultra-secure
EM_Industries_energy_solutions_request
    Get_Request  em_industries_energysolutions  ${EM_INDUSTRIES_ENERGY_SOLUTIONS}   Viasat offers a complete Operational AI platform
EM_Industries_energy_solutions_managed_request
    Get_Request   em_industries_energysolutions_managed    ${EM_INDUSTRIES_ENERGY_SOLUTIONS_MANAGED}    We provide end-to-end service
EM_Industries_energy_solutions_iiot_request
    Get_Request  em_industries_energysolutions_iiot  ${EM_INDUSTRIES_ENERGY_SOLUTIONS_IIOT}   Viasat brings to market a full suite of managed communications services providing end-to-end
EM_Industries_energy_solutions_system_request
    Get_Request  em_industries_energysolutions_system   ${EM_INDUSTRIES_ENERGY_SOLUTIONS_SYSTEM}   Global Customer Care (GCC) Network Operations Center (NOC)
EM_Industries_energy_oil_request
    Get_Request  em_industries_energy_oil   ${EM_INDUSTRIES_ENERGY_OIL}  leading network and technology provider for connecting and securing complex
EM_Industries_maritime_request
    Get_Request  em_industries_maritime   ${EM_INDUSTRIES_MARITIME}   Depending on the specific Viasat maritime plan
EM_Industries_maritime_passanger_request
    Get_Request  em_industries_maritime_passanger   ${EM_INDUSTRIES_MARITIME_PASSENGER}  No speed limits means that there is no cap set on the typical speed
EM_Industries_commercial_request
    Get_Request  em_industries_commercial  ${EM_INDUSTRIES_MARITIME_COMMERCIAL}    Looking for an innovative solution
EM_Industries_Leisure_request
    Get_Request  em_industries_leisure  ${EM_INDUSTRIES_MARITIME_LEISURE}    No speed limits means that there is no cap set on the typical speed delivered
EM_Industries_Maritime_resources_request
    Get_Request  em_industries_maritime_resources  ${EM_INDUSTRIES_MARITIME_RESOURCES}   Looking for an innovative solution
EM_Solutions_request
    Get_Request  em_solutions   ${EM_SOLUTIONS}   Safeguard your business-critical information with end-to-end encryption
EM_Solutions_commercial_request
    Get_Request  em_solutions_commercial   ${EM_SOLUTIONS_COMMERCIAL}    Discover how you can optimize your connectivity pipeline
EM_Solutions_Maritime_request
    Get_Request  em_solutions_maritime  ${EM_SOLUTIONS_MARITIME}   Looking for an innovative solution
EM_Solutions_cyber_request
    Get_Request  em_solutions_cyber  ${EM_SOLUTIONS_CYBERSECURITY}  Connect with Viasat today to learn more about our cybersecurity solutions
EM_Solutions_intellie_request
    Get_Request  em_solutions_intellie  ${EM_SOLUTIONS_INTELLIE}   INTELIE works with companies
EM_Solutions_enterprise_request
    Get_Request  em_solutions_enterprise  ${EM_SOLUTIONS_ENTERPRISE}   Request a consultation today
EM_Solutions_Cloud_request
    Get_Request  em_solutions_cloud   ${EM_SOLUTIONS_ENTERPRISE_CLOUD}  Talk to a Viasat Business expert
EM_Solutions_gowifi_request
    Get_Request  em_solutions_gowifi   ${EM_SOLUTIONS_ENTERPRISE_GOWIFI}   If you need a disclaimer specific to this page
EM_Solutions_sdwan_request
    Get_Request  em_solutions_sdwan   ${EM_SOLUTIONS_ENTERPRISE_SDWAN}   Request a consultation today
EM_Solutions_Cybersecurity_request
    Get_Request  em_solutions_cybersecurity  ${EM_SOLUTIONS_ENTERPRISE_CYBERSECURITY}  If you need a disclaimer specific to this page
EM_Solutions_mobile_request
    Get_Request  em_solutions_mobile  ${EM_SOLUTIONS_ENTERPRISE_MOBILE}   To talk to a Viasat MSS representative
EM_Solutions_ad_try_request
    Get_Request  em_solutions_ad_try   ${EM_SOLUTIONS_ENTERPRISE_AD_TRY}   Entice new business with a test drive
EM_Solutions_ad_watch_request
    Get_Request  em_solutions_ad_watch   ${EM_SOLUTIONS_ENTERPRISE_AD_WATCH}  Viewers must watch to the end to get the free Wi-Fi
EM_Solutions_ad_request
    Get_Request  em_solutions_ad   ${EM_SOLUTIONS_ENTERPRISE_AD_CONTACT}  Your audience awaits
EM_Aviation_request
    Get_Request  em_aviation  ${EM_AVIATION}   Our mobile broadband service powers media-enabled two-way IP communications
EM_offers_save50_request
    Get_Request  em_offers240   ${EM_OFFERS_SAVE50}    If you need a disclaimer specific to this page
EM_offers_request_request
    Get_Request  em_offers  ${EM_OFFERS}     If you need a disclaimer specific to this page
EM_Global_connectivity_request
    Get_Request  em_global_connectivity  ${EM_GLOBAL_COMMUNITY}    If you need a disclaimer specific to this page
EM_Global_request
    Get_Request  em_global  ${EM_GLOBAL}   If you need a disclaimer specific to this page
EM_Ad_request
    Get_Request  em_sdvertise  ${EM_ADVERTISE}  If you need a disclaimer specific to this page
EM_Ad_Sponser_request
    Get_Request  em_sponser  ${EM_ADVERTISE_SPONSER}   If you need a disclaimer specific to this page
EM_Ad_Sponser_Access_request
    Get_Request  em_sponseraccess  ${EM_ADVERTISE_SPONSER_ACCESS}    In 2021, a partnership between Viasat and UN Women
