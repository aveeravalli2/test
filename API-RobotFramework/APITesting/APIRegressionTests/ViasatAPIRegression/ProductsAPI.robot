*** Settings ***

Library  RequestsLibrary

*** Variables ***
${VIASAT_US_PRODUCTS_SATELLITE_ANTENNAS}      https://www.viasat.com/content/viasat/us/en/products/satellite-antennas.model.json
${PRODUCTS_SATELLITE_FIXED}    https://www.viasat.com/content/viasat/us/en/products/satellite-antennas/fixed-wireless.model.json
${PRODUCTS_TERMINALS}   https://www.viasat.com/content/viasat/us/en/products/terminals-and-radios.model.json
${PRODUCTS_TERMINALS_FIXED}            https://www.viasat.com/content/viasat/us/en/products/terminals-and-radios/fixed-broadband-terminals.model.json
${PRODUCTS_TERMINALS_BATS_E}      https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/bats-e.model.json
${PRODUCTS_TERMINALS_BATS_D}    https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/bats-d.model.json
${PRODUCTS_TERMINALS_TACTICAL}            https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/tactical-gateway.model.json
${PRODUCTS_TERMINALS_MIDS_JTRS}         https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/mids-jtrs.model.json
${PRODUCTS_TERMINALS_MIDS_LVT}      https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/mids-lvt.model.json
${PRODUCTS_TERMINALS_ENERLINKS}           https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/enerlinks.model.json
${PRODUCTS_TERMINALS_UHF}           https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/uhf-satcom.model.json
${PRODUCTS_TERMINALS_MARITIME}        https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/maritime-terminals.model.json
${PRODUCTS_TERMINALS_KU}     https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/ku-band-terminals.model.json
${PRODUCTS_TERMINALS_KA}  https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/ka-band-terminals.model.json
${PRODUCTS_TERMINALS_DUAL}    https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/dual-band-terminals.model.json
${PRODUCTS_TERMINALS_LBAND}  https://www.viasat.com//content/viasat/us/en/products/terminals-and-radios/l-band-terminals.model.json
${PRODUCTS_TERMINALS_GROUND}   https://www.viasat.com/content/viasat/us/en/products/terminals-and-radios/ground-terminals.model.json
${PRODUCTS_TERMINALS_VDC}       https://www.viasat.com/content/viasat/us/en/products/terminals-and-radios/vdc.model.json
${PRODUCTS_MODEMS}            https://www.viasat.com//content/viasat/us/en/products/modems.model.json
${PRODUCTS_SEMICONDUCTORS}  https://www.viasat.com//content/viasat/us/en/products/semiconductors.model.json
${PRODUCTS_CYBERSECURITY}     https://www.viasat.com//content/viasat/us/en/products/cybersecurity.model.json
${PRODUCTS_CYBERSECURITY-VINE}  https://www.viasat.com/content/viasat/us/en/products/cybersecurity/vine-network-management-system.model.json
${PRODUCTS_SOFTWARE}  https://www.viasat.com/content/viasat/us/en/products/software-and-services.model.json
${PRODUCTS_SOFTWARE_MOBILE}  https://www.viasat.com/content/viasat/us/en/products/software-and-services/mobile-integrated-solutions.model.json
${PRODUCTS_SOFTWARE_TRUSTED}   https://www.viasat.com/content/viasat/us/en/products/software-and-services/trusted-cybersecurity-services.model.json
${PRODUCTS_SOFTWARE_MANAGED}   https://www.viasat.com/content/viasat/us/en/products/software-and-services/managed-security-services.model.json
${PRODUCTS_SOFTWARE_NETAGILITY}   https://www.viasat.com/content/viasat/us/en/products/software-and-services/netagility.model.json
${PRODUCTS_HOME_INTERNET}   https://www.viasat.com//content/viasat/us/en/products/home-internet.model.json

*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

viasat_Products_Satellite_Antennas_request
    Get_Request  viasat_Products_Satellite_Antennas   ${VIASAT_US_PRODUCTS_SATELLITE_ANTENNAS}     SATCOM antennas
viasat_products_fixed_request
    Get_Request  viasat_products_fixed   ${PRODUCTS_SATELLITE_FIXED}     fixed wireless antenna
viasat_products_terminals_request
    Get_Request  viasat_products_terminals   ${PRODUCTS_TERMINALS}    terminal with integrated RF
viasat_products_terminals_fixed_request
    Get_Request  viasat_products_terminals_fixed  ${PRODUCTS_TERMINALS_FIXED}   fixed broadband terminal
viasat_products_terminals_bats_e_request
    Get_Request  viasat_products_terminals_bats_e   ${PRODUCTS_TERMINALS_BATS_E}   Department of Defense
viasat_products_terminals_bats_d_request
    Get_Request  viasat_products_terminals_bats_d   ${PRODUCTS_TERMINALS_BATS_D}   Department of Defense
viasat_products_terminals_tactical_request
    Get_Request  viasat_products_terminals_tactical  ${PRODUCTS_TERMINALS_TACTICAL}   Department of Defense
viasat_products_terminals_mids_jtrs_request
    Get_Request  viasat_products_terminals_mids_jtrs   ${PRODUCTS_TERMINALS_MIDS_JTRS}   Department of Defense
viasat_products_terminals_mids_lvt_request
    Get_Request  viasat_products_terminals_mids_lvt  ${PRODUCTS_TERMINALS_MIDS_LVT}   Department of Defense
viasat_products_terminals_mids_enerlinks_request
    Get_Request  viasat_products_terminals_mids_enerlinks   ${PRODUCTS_TERMINALS_ENERLINKS}   Department of Defense
viasat_products_terminals_uhf_request
    Get_Request  viasat_products_terminals_uhf   ${PRODUCTS_TERMINALS_UHF}  Department of Defense
viasat_products_terminals_maritime_request
    Get_Request   viasat_products_terminals_maritime   ${PRODUCTS_TERMINALS_MARITIME}  Department of Defense
viasat_products_terminals_KU_request
    Get_Request   viasat_products_terminals_KU   ${PRODUCTS_TERMINALS_KU}   Department of Defense
viasat_products_terminals_KA_request
    Get_Request   viasat_products_terminals_KA  ${PRODUCTS_TERMINALS_KA}   Department of Defense
viasat_products_terminals_dual_request
    Get_Request   viasat_products_terminals_dual  ${PRODUCTS_TERMINALS_DUAL}   Department of Defense
viasat_products_terminals_lband_request
    Get_Request   viasat_products_terminals_lband  ${PRODUCTS_TERMINALS_LBAND}   Department of Defense
viasat_products_terminals_ground_request
    Get_Request   viasat_products_terminals_ground  ${PRODUCTS_TERMINALS_GROUND}   Department of Defense
viasat_products_terminals_vdc_request
    Get_Request   viasat_products_terminals_vdc   ${PRODUCTS_TERMINALS_VDC}   Department of Defense
viasat_products_modems_request
    Get_Request   viasat_products_modems  ${PRODUCTS_MODEMS}   Department of Defense
viasat_products_semiconductors_request
    Get_Request   viasat_products_semiconductors   ${PRODUCTS_SEMICONDUCTORS}   Radio frequency
viasat_products_cybersecurity_request
    Get_Request   viasat_products_cybersecurity  ${PRODUCTS_CYBERSECURITY}  Security Operations Center
viasat_products_vine_request
    Get_Request  viasat_products_vine   ${PRODUCTS_CYBERSECURITY-VINE}   VINE Manager software
viasat_products_software_request
    Get_Request  viasat_products_software   ${PRODUCTS_SOFTWARE}   Ground stations as a service
viasat_products_software_mobile_request
    Get_Request  viasat_products_software_mobile  ${PRODUCTS_SOFTWARE_MOBILE}   Looking for an innovative solution
viasat_products_software_trusted_request
    Get_Request  viasat_products_software_trusted  ${PRODUCTS_SOFTWARE_TRUSTED}    Looking for an innovative solution
viasat_products_software_managed_request
    Get_Request  viasat_products_software_managed  ${PRODUCTS_SOFTWARE_MANAGED}    Looking for an innovative solution
viasat_products_software_netagility_request
    Get_Request  viasat_products_software_netagility  ${PRODUCTS_SOFTWARE_NETAGILITY}    Looking for an innovative solution
viasat_products_home_internet_request
    Get_Request  viasat_products_home_internet  ${PRODUCTS_HOME_INTERNET}    Satellite Internet
