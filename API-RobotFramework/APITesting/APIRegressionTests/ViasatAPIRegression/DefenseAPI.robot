*** Settings ***

Library  RequestsLibrary

*** Variables ***
${VIASAT_US_EN_DEFENSE_DOMAINS}    https://www.viasat.com/content/viasat/us/en/defense/domains.model.json
${DEFENSE_DOMAIN_AIR}               https://www.viasat.com/content/viasat/us/en/defense/domains/air.model.json
${DEFENSE_DOMAIN_CYBER}    https://www.viasat.com//content/viasat/us/en/defense/domains/cybersecurity.model.json
${DEFENSE_DOMAIN_GROUND}       https://www.viasat.com//content/viasat/us/en/defense/domains/ground.model.json
${DEFENSE_DOMAIN_MARITIME}    https://www.viasat.com//content/viasat/us/en/defense/domains/maritime.model.json
${DEFENSE_DOMAIN_SPACE}            https://www.viasat.com/content/viasat/us/en/defense/domains/space.model.json
${DEFENSE_DOMAIN_SPACE-VIASAT3}          https://www.viasat.com/content/viasat/us/en/defense/domains/space/viasat-3.model.json
${DEFENSE_DOMAIN_JADC2}      https://www.viasat.com//content/viasat/us/en/defense/domains/jadc2.model.json
${DEFENSE_SOLUTIONS}           https://www.viasat.com//content/viasat/us/en/defense/solutions.model.json
${DEFENSE_SOLUTIONS_SATCOM}          https://www.viasat.com//content/viasat/us/en/defense/solutions/satcom.model.json
${DEFENSE_SOLUTIONS_SATCOM_TERMINALS}       https://www.viasat.com//content/viasat/us/en/defense/solutions/satcom/terminals.model.json
${DEFENSE_SOLUTIONS_SATCOM_MODEMS}      https://www.viasat.com//content/viasat/us/en/defense/solutions/satcom/modems-and-waveforms.model.json
${DEFENSE_SOLUTIONS_SATCOM_SERVICES}  https://www.viasat.com//content/viasat/us/en/defense/solutions/satcom/services.model.json
${DEFENSE_SOLUTIONS_SATCOM_CYBER}    https://www.viasat.com/content/viasat/us/en/defense/solutions/cybersecurity-data-protection.model.json
${DEFENSE_SOLUTIONS_SATCOM_CYBER_CLOUD}   https://www.viasat.com/content/viasat/us/en/defense/solutions/cybersecurity-data-protection/cloud-and-enterprise-encryption.model.json
${DEFENSE_SOLUTIONS_SATCOM_CYBER_SPACE}    https://www.viasat.com/content/viasat/us/en/defense/solutions/cybersecurity-data-protection/space-encryption.model.json
${DEFENSE_SOLUTIONS_SATCOM_CYBER_EDGE}       https://www.viasat.com/content/viasat/us/en/defense/solutions/cybersecurity-data-protection/edge-encryption.model.json
${DEFENSE_SOLUTIONS_SATCOM_CYBER_SERVICES}            https://www.viasat.com/content/viasat/us/en/defense/solutions/cybersecurity-data-protection/services.model.json
${DEFENSE_SOLUTIONS_SATCOM_CYBER_SOC_SERVICES}   https://www.viasat.com/content/viasat/us/en/defense/solutions/cybersecurity-data-protection/soc-solutions.model.json
${DEFENSE_SOLUTIONS_TACTICAL}     https://www.viasat.com/content/viasat/us/en/defense/solutions/tactical-networking.model.json
${DEFENSE_SOLUTIONS_MANAGED}   https://www.viasat.com/content/viasat/us/en/defense/solutions/managed-wifi.model.json
${DEFENSE_SOLUTIONS_MANAGED_GOWIFI}             https://www.viasat.com/content/viasat/us/en/defense/solutions/managed-wifi/gowifi-navy.model.json
${DEFENSE_AIR}               https://www.viasat.com/content/viasat/us/en/defense/air.model.json
${DEFENSE_CYBERSECURITY}  https://www.viasat.com/content/viasat/us/en/defense/cybersecurity.model.json
${DEFENSE_SPACE}     https://www.viasat.com/content/viasat/us/en/defense/space.model.json
${DEFENSE_GROUND}    https://www.viasat.com//content/viasat/us/en/defense/ground.model.json
${DEFENSE_MARITIME}  https://www.viasat.com//content/viasat/us/en/defense/maritime.model.json
${DEFENSE_MULTI_MARITIME}         https://www.viasat.com//content/viasat/us/en/defense/multi-domain.model.json
${DEFENSE_CONTRACT}          https://www.viasat.com//content/viasat/us/en/defense/contract-vehicles.model.json
${DEFENSE_TACTICAL}            https://www.viasat.com//content/viasat/us/en/defense/tactical-communications.model.json
${DEFENSE_CYBER}    https://www.viasat.com//content/viasat/us/en/defense/cybersecurity-data-protection.model.json
${DEFENSE_CYBER_CLOUD}   https://www.viasat.com//content/viasat/us/en/defense/cybersecurity-data-protection/cloud-and-enterprise-encryption.model.json
${DEFENSE_CYBER_SPACE}     https://www.viasat.com//content/viasat/us/en/defense/cybersecurity-data-protection/space-encryption.model.json
${DEFENSE_CYBER_EDGE}    https://www.viasat.com//content/viasat/us/en/defense/cybersecurity-data-protection/edge-encryption.model.json
${DEFENSE_CYBER_SERVICES}    https://www.viasat.com//content/viasat/us/en/defense/cybersecurity-data-protection/services.model.json
${DEFENSE_TACTICAL_DATA}    https://www.viasat.com//content/viasat/us/en/defense/tactical-data-links.model.json
${DEFENSE_SATCOM}            https://www.viasat.com//content/viasat/us/en/defense/satcom.model.json
${DEFENSE_TERMINALS}    https://www.viasat.com//content/viasat/us/en/defense/satcom/terminals.model.json
${DEFENSE_MODEMS}  https://www.viasat.com//content/viasat/us/en/defense/satcom/modems-and-waveforms.model.json
${DEFENSE_SERVICES}    https://www.viasat.com//content/viasat/us/en/defense/satcom/services.model.json
${DEFENSE_VIASAT3}       https://www.viasat.com//content/viasat/us/en/defense/viasat-3.model.json




*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

viasat_us_Defense_domain_request
    Get_Request  viasat_us_defense_domain   ${VIASAT_US_EN_DEFENSE_DOMAINS}    Ensure your fight tonight capability
Defense_Domain_Air_request
    Get_Request  defense_domain_air      ${DEFENSE_DOMAIN_AIR}     With resilient and reliable airborne communications, mission effectiveness can now be achieved
Defense_Domain_Cyber_request
    Get_Request   defense_domain_cyber    ${DEFENSE_DOMAIN_CYBER}    Cyber threats can appear instantly
Defense_Domain_ground_request
    Get_Request  defense_domain_ground    ${DEFENSE_DOMAIN_GROUND}   Get secure
Defense_Domain_maritime_request
    Get_Request  defense_domain_maritime   ${DEFENSE_DOMAIN_MARITIME}   Viasat delivers resilient
Defense_Domain_Space_request
    Get_Request   defense_domain_space    ${DEFENSE_DOMAIN_SPACE}    Space has become an intrinsic part of all defense operations
Defense_Domain_Space_Viasat3_request
    Get_Request  defense_domain_space_viasat3   ${DEFENSE_DOMAIN_SPACE-VIASAT3}   If you need a disclaimer specific to this page
Defense_Domain_JADC2_request
    Get_Request  defense_domainjadc2   ${DEFENSE_DOMAIN_JADC2}   Viasat is uniquely positioned to support JADC2
Defense_Solutions_request
    Get_Request    defense_solutions    ${DEFENSE_SOLUTIONS}  Bridging the communications gaps between teams
Defense_Solutions_Satcom_request
    Get_Request   defense_solutions_satcom     ${DEFENSE_SOLUTIONS_SATCOM}    Faster decision
Defense_Solutions_Satcom_Terminals_request
    Get_Request  defense_solutions_satcom_terminals   ${DEFENSE_SOLUTIONS_SATCOM_TERMINALS}   leading technology to meet evolving mission
Defense_Solutions_Satcom_Modem_request
    Get_Request   defense_solutions_satcom_modem     ${DEFENSE_SOLUTIONS_SATCOM_MODEMS}    capacity tactical networking backbone
Defense_Solutions_Satcom_Services_request
    Get_Request  defense_solutions_satcom_services    ${DEFENSE_SOLUTIONS_SATCOM_SERVICES}    From base to objective
Defense_Solutions_Satcom_Cyber_request
    Get_Request  defense_solutions_satcom_cyber  ${DEFENSE_SOLUTIONS_SATCOM_CYBER}   Advanced insight into the ever
Defense_Solutions_Satcom_Cyber_Cloud_request
    Get_Request  defense_solutions_satcom_cyber_cloud   ${DEFENSE_SOLUTIONS_SATCOM_CYBER_CLOUD}   Confidently secure your classified network data
Defense_Solutions_Satcom_Cyber_Space_request
    Get_Request  defense_solutions_satcom_cyber_space   ${DEFENSE_SOLUTIONS_SATCOM_CYBER_SPACE}   Innovative
Defense_Solutions_Satcom_Cyber_Edge_request
    Get_Request  defense_solutions_satcom_cyber_edge  ${DEFENSE_SOLUTIONS_SATCOM_CYBER_EDGE}   Keeping classified government communications secure
Defense_Solutions_Satcomm_Cyber_services_request
    Get_Request   defense_solutions_satcom_cyber_services    ${DEFENSE_SOLUTIONS_SATCOM_CYBER_SERVICES}    Using machine learning and big data
Defense_Solutions_Satcom_Cyber_soc_services_request
    Get_Request  defense_solutions_satcom_cyber_soc_services  ${DEFENSE_SOLUTIONS_SATCOM_CYBER_SOC_SERVICES}   If you need a disclaimer specific to this page
Defense_Solutions_tactical_request
    Get_Request  defense_solutions_tactical   ${DEFENSE_SOLUTIONS_TACTICAL}   solutions deliver inherent competitive advantages
Defense_Solutions_Managed_request
    Get_Request  defense_solutions_managed   ${DEFENSE_SOLUTIONS_MANAGED}  Extend the reach of broadband connections
Defense_Solutions_Managed_Gowifi_request
    Get_Request  defense_solutions_gowifi   ${DEFENSE_SOLUTIONS_MANAGED_GOWIFI}   If you need a disclaimer specific to this page
Defense_Air_request
    Get_Request  defense_air   ${DEFENSE_AIR}  With resilient and reliable airborne communications
Defense_Cybersecurity_request
    Get_Request  defense_cyber  ${DEFENSE_CYBERSECURITY}    Stay connected
Defense_Space_request
    Get_Request  defense_space  ${DEFENSE_SPACE}    pace has become an intrinsic part of all defense operations
Defense_Ground_request
    Get_Request  defense_ground  ${DEFENSE_GROUND}   Get secure
Defense_Maritime_request
    Get_Request  defense_maritime   ${DEFENSE_MARITIME}   Viasat delivers resilient
Defense_Multimaritime_request
    Get_Request  defense_maritime   ${DEFENSE_MULTI_MARITIME}    Keep warfighters on the leading edge of the battlespace
Defense_Contract_request
    Get_Request  defense_multimaritime  ${DEFENSE_CONTRACT}   Buying Viasat products and services through contract vehicles
Defense_Tactical_request
    Get_Request  defense_tactical  ${DEFENSE_TACTICAL}  deliver inherent competitive advantages
Defense_Cyber_request
    Get_Request  defense_cyber  ${DEFENSE_CYBER}   Advanced insight into the ever
Defense_Cyber_Cloud_request
    Get_Request  defense_cyber_cloud  ${DEFENSE_CYBER_CLOUD}   Confidently secure your classified network data
Defense_Cyber_Space_request
    Get_Request  defense_cyber_space   ${DEFENSE_CYBER_SPACE}  Innovative
Defense_Cyber_edge_request
    Get_Request  defense_cyber_edge   ${DEFENSE_CYBER_EDGE}   Keeping classified government communications secure
Defense_Cyber_Services_request
    Get_Request  defense_cyber_services   ${DEFENSE_CYBER_SERVICES}   Using machine learning and big data
Defense_Tactical_Data_request
    Get_Request  defense_tactical_data  ${DEFENSE_TACTICAL_DATA}  Gain enhanced situational awareness with real
Defense_Satcom_request
    Get_Request  defense_satcom  ${DEFENSE_SATCOM}   enhanced situational awareness on the ground
Defense_Terminals_request
    Get_Request  defense_terminals   ${DEFENSE_TERMINALS}   leading technology to meet evolving mission requirements
Defense_Modems_request
    Get_Request  defense_modems   ${DEFENSE_MODEMS}   tactical networking backbone to reach virtually
Defense__Services_request
    Get_Request  defense_services   ${DEFENSE_SERVICES}  From base to objective
Defense_Viasat3_request
    Get_Request  defense_viasat3  ${DEFENSE_VIASAT3}   A new generation of commercial SATCOM

