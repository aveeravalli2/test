*** Settings ***

Library  RequestsLibrary

*** Variables ***
${VIASAT_US_EN_SPACE_SYSTEMS}    https://www.viasat.com/content/viasat/us/en/space-innovation/space-systems.model.json
${SPACE_SYSTEM_GEO}              https://www.viasat.com/content/viasat/us/en/space-innovation/space-systems/geo-satellites.model.json
${SPACE_SYSTEM_SMALL}    https://www.viasat.com/content/viasat/us/en/space-innovation/space-systems/small-satellites.model.json
${SPACE_SYSTEM_INTRA}       https://www.viasat.com/content/viasat/us/en/space-innovation/space-systems/intersatellite-communications.model.json
${SPACE_SYSTEM_GROUND}   https://www.viasat.com/content/viasat/us/en//space-innovation/space-systems/ground-systems.model.json
${SPACE_SATELLITE_FLEET}          https://www.viasat.com/content/viasat/us/en//space-innovation/satellite-fleet.model.json
${SPACE_SATELLITE_FLEET_GLOBAL}      https://www.viasat.com/content/viasat/us/en//space-innovation/satellite-fleet/global-satellite-internet.model.json
${SPACE_SATELLITE_FLEET_ANIK}           https://www.viasat.com/content/viasat/us/en//space-innovation/satellite-fleet/anik-f2.model.json
${SPACE_SATELLITE_FLEET_WILDBLUE}          https://www.viasat.com/content/viasat/us/en//space-innovation/satellite-fleet/wildblue-1.model.json
${SPACE_SATELLITE_FLEET_VIASAT1}       https://www.viasat.com/content/viasat/us/en//space-innovation/satellite-fleet/viasat-1.model.json
${SPACE_SATELLITE_FLEET_VIASAT2}      https://www.viasat.com/content/viasat/us/en//space-innovation/satellite-fleet/viasat-2.model.json
${SPACE_SATELLITE_FLEET_VIASAT3}   https://www.viasat.com/content/viasat/us/en//space-innovation/satellite-fleet/viasat-3.model.json
${SPACE_SATELLITE_FLEET_KA_SAT}    https://www.viasat.com/content/viasat/us/en/space-innovation/satellite-fleet/ka-sat.model.json
${SPACE_POLICY}   https://www.viasat.com/content/viasat/us/en//space-innovation/space-policy.model.json
${SPACE_POLICY_SPECTRUM}    https://www.viasat.com/content/viasat/us/en/space-innovation/space-policy/spectrum.model.json
${SPACE_POLICY_DEBRIS}       https://www.viasat.com/content/viasat/us/en/space-innovation/space-policy/space-debris.model.json
${SPACE_POLICY_ENV}           https://www.viasat.com/content/viasat/us/en/space-innovation/space-policy/environmental-impact.model.json
${SPACE_NETWORK}  https://www.viasat.com/content/viasat/us/en/space-innovation/space-and-networking-technology.model.json
${SPACE_NETWORK_GROUND}     https://www.viasat.com/content/viasat/us/en/space-innovation/space-and-networking-technology/ground-antennas.model.json
${SPACE_NETWORK_GROUND_SATCOM}   https://www.viasat.com/content/viasat/us/en///space-innovation/space-and-networking-technology/ground-antennas/satcom.model.json
${SPACE_NETWORK_MOBILE}             https://www.viasat.com/content/viasat/us/en//space-innovation/space-and-networking-technology/mobile-antennas.model.json
${SPACE_NETWORK_MOBILE_AVIATION}              https://www.viasat.com/content/viasat/us/en//space-innovation/space-and-networking-technology/mobile-antennas/aviation.model.json
${SPACE_NETWORK_MOBILE_LAND}  https://www.viasat.com/content/viasat/us/en//space-innovation/space-and-networking-technology/mobile-antennas/land-and-sea-comunications.model.json
${SPACE_NETWORK_CUSTOM}     https://www.viasat.com/content/viasat/us/en//space-innovation/space-and-networking-technology/custom-antenna-solutions.model.json
${SPACE_NETWORK_ANTENNA}    https://www.viasat.com/content/viasat/us/en/space-innovation/space-and-networking-technology/antenna-testing-and-support.model.json
${SPACE_NETWORK_ASCICS}  https://www.viasat.com/content/viasat/us/en//space-innovation/space-and-networking-technology/asics-and-ip-cores/fec-forward-error-correction.model.json
${SPACE_NETWORK_ASCICS_COHERENT}        https://www.viasat.com/content/viasat/us/en/space-innovation/space-and-networking-technology/asics-and-ip-cores/coherent-optical.model.json
${SPACE_NETWORK_GROUND_NETWORK}         https://www.viasat.com/content/viasat/us/en/space-innovation/space-and-networking-technology/ground-network.model.json




*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

viasat_us_Space_Systems_request
    Get_Request  viasat_us_Space_Systems   ${VIASAT_US_EN_SPACE_SYSTEMS}   Viasat is proud to be one of Via Satellite
Space_System_Geo_request
    Get_Request  Space_Systems_Geo     ${SPACE_SYSTEM_GEO}     primary fleet is in high earth orbit for
Space_System_Small_request
    Get_Request   Space_System_Smalr    ${SPACE_SYSTEM_SMALL}    Sustainable space systems for LEO constellations
Space_System_Intra_request
    Get_Request  Space_System_Intra    ${SPACE_SYSTEM_INTRA}   Intersatellite communication leveraging Viasat
Space_System_Ground_request
    Get_Request  Space_System_Ground   ${SPACE_SYSTEM_GROUND}   innovative ground systems are the backbone of our network
Space_System_Fleet_request
    Get_Request   Space_System_Fleet    ${SPACE_SATELLITE_FLEET}    satellite systems are transforming satellite communications
Space_System_Fleet_Global_request
    Get_Request  Space_System_Fleet_Global   ${SPACE_SATELLITE_FLEET_GLOBAL}   internet service around the world
Space_System_Fleet_Anik_request
    Get_Request   Space_System_Fleet_Anik   ${SPACE_SATELLITE_FLEET_ANIK}   Anik F2 offered a higher
Space_System_Fleet_Wildblue_request
    Get_Request    Space_System_Fleet_Wildblue    ${SPACE_SATELLITE_FLEET_WILDBLUE}  WildBlue
Space_System_Fleet_Viasat1_request
    Get_Request   Space_System_Fleet_Viasat1     ${SPACE_SATELLITE_FLEET_VIASAT1}   Viasat introduced the high
Space_System_Fleet_Viasat2_request
    Get_Request  Space_System_Fleet_Viasat2   ${SPACE_SATELLITE_FLEET_VIASAT2}   satellite greatly expanded speeds and geographic coverage
Space_System_Fleet_Viasat3_request
    Get_Request   Space_System_Fleet_Viasat3     ${SPACE_SATELLITE_FLEET_VIASAT3}    Designed to have superior capacity
Space_System_Fleet_KA_SAT_request
    Get_Request  Space_System_Fleet_KA_SAT    ${SPACE_SATELLITE_FLEET_KA_SAT}    satellite network provides internet coverage over much of Europe
Space_Policy_request
    Get_Request  Space_Policy  ${SPACE_POLICY}   Listen to Viasat Exec Chairman Mark Dankberg
Space_Policy_Spectrum_request
    Get_Request  Space_Policy_Spectrum   ${SPACE_POLICY_SPECTRUM}   Space equity
Space_Policy_Debris_request
    Get_Request  Space_Policy_Debris  ${SPACE_POLICY_DEBRIS}   Space safety
Space_Policy_Env_request
    Get_Request  Space_Policy_Env  ${SPACE_POLICY_ENV}   Space sustainability
Space_Network_request
    Get_Request   Space_Network    ${SPACE_NETWORK}    Viasat is a trusted partner for satellite and wireless systems development
Space_Network_Ground_request
    Get_Request  Space_Network_Ground  ${SPACE_NETWORK_GROUND}   Our breakthroughs are the results of decades of experience and innovations
Space_Network_Satcom_request
    Get_Request  Space_Network_Satcom   ${SPACE_NETWORK_GROUND_SATCOM}   Viasat offers proven GEO
Space_Network_Mobile_request
    Get_Request  Space_Network_Mobile  ${SPACE_NETWORK_MOBILE}  Trust Viasat with your industry
Space_Network_Mobile_Aviation_request
    Get_Request  Space_Network_Mobile_Aviation   ${SPACE_NETWORK_MOBILE_AVIATION}   Customers around the world use our advanced airborne antennas
Space_Network_Mobile_Land_request
    Get_Request  Space_Network_Mobile_Land   ${SPACE_NETWORK_MOBILE_LAND}  Our mobile SATCOM antennas deliver unprecedented performance
Space_Network_Custom_request
    Get_Request  Space_Network_Custom  ${SPACE_NETWORK_CUSTOM}    Customized solutions drawing on our decades
Space_Network_Antenna_request
    Get_Request  Space_Network_Antenna  ${SPACE_NETWORK_ANTENNA}   Viasat offers innovative test
Space_Network_Ascics_request
    Get_Request  Space_Network_Ascics  ${SPACE_NETWORK_ASCICS}   View of hand holding fec forward error correction technology
Space_Network_Asics_Coherant_request
    Get_Request  Space_Network_Asics_Coherant   ${SPACE_NETWORK_ASCICS_COHERENT}   Looking for an innovative solution
Space_Network_Ground_Network_request
    Get_Request  Space_Network_Ground_Network   ${SPACE_NETWORK_GROUND_NETWORK}    Earth service is changing how data is delivered
