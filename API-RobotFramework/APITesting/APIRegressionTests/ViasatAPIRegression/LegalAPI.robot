*** Settings ***
Library  RequestsLibrary

*** Variables ***
${VIASAT_LEGAL_STATEMENTS}   https://www.viasat.com//content/viasat/us/en/legal/legal-statements.model.json
${VIASAT_LEGAL_ES}  https://www.viasat.com//content/viasat/us/en/legal/legal-es.model.json
${VIASAT_LEGAL_OPEN}  https://www.viasat.com//content/viasat/us/en/legal/open-source-licenses.model.json
${VIASAT_LEGAL_EDGE}   https://www.viasat.com//content/viasat/us/en/legal/intelligent-edge-solutions.model.json
${VIASAT_LEGAL_ENERGY}  https://www.viasat.com//content/viasat/us/en/legal/viasat-energy.model.json
${VIASAT_LEGAL_COSTA}  https://www.viasat.com//content/viasat/us/en/legal/costa-rica-legal-documents.model.json



*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

legal_statement_request
    Get_Request  legal_statements   ${VIASAT_LEGAL_STATEMENTS}     Legal Statements
legal_es_request
    Get_Request  legal_es   ${VIASAT_LEGAL_ES}     Descargos de responsibilidad legales
legal_open_request
    Get_Request  legal_open   ${VIASAT_LEGAL_OPEN}    License document
legal_edge_request
    Get_Request  legal_edge  ${VIASAT_LEGAL_EDGE}   Intelie LIVE
legal_energy_request
    Get_Request  legal_energy   ${VIASAT_LEGAL_ENERGY}   Managed Communications Services
legal_costa_request
    Get_Request  legal_costa   ${VIASAT_LEGAL_COSTA}   actualizaremos
