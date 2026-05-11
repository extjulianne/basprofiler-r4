
ValueSet: SEBaseHSAVerksamhetVS
Title: "HSA valueset for business classification codes"
Description: "Codes used to describe the type of care activities an entity can provide."
* ^status = #active
* ^experimental = false
* include codes from system urn:oid:1.2.752.129.2.2.1.3

Profile: SEBaseOrganization
Parent: Organization
Title: "SE base profile for organization"
Description: "This is the base Organization profile to be used when profiling on Organization in a Swedish context"
* ^status = #active
* ^experimental = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish organization ID"
* identifier contains hsaid 0..*
* identifier[hsaid].system = $hsaid // (exactly)
* identifier[hsaid].type = $v2-0203#PRN // (exactly)
* identifier contains organizationIdentifier 0..1
* identifier[organizationIdentifier].system = "urn:oid:2.5.4.97" // (exactly)
* identifier[organizationIdentifier].type = $v2-0203#XX // (exactly)
* identifier contains personalIdentityNumber 0..1
* identifier[personalIdentityNumber].system = $personnummer
* identifier contains coordinationNumber 0..1
* identifier[coordinationNumber].system = $samordningsnummer

* type from SEBaseOrganizationTypeVS (extensible)

* extension contains SEBaseOrganizationOwnershipExtension named ownershipType 0..1
* extension contains $organization-period named period 0..1
* extension contains SEBaseOrganizationLegalFormExtension named legalForm 0..1

Extension: SEBaseOrganizationLegalFormExtension
Id: SEBaseOrganizationLegalFormExtension
Description: "Extension for legal form"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SEBaseOrganizationLegalFormVS (required)

Extension: SEBaseOrganizationOwnershipExtension
Id: SEBaseOrganizationOwnershipExtension
Description: "Extension for organization ownership type"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SEBaseOrganizationOwnershipVS (required)

ValueSet: SEBaseOrganizationOwnershipVS
Id: SEBaseOrganizationOwnershipVS
Title: "SE ValueSet for organization ownership categories"
Description: "This value set contains categories of ownership of organizations from Statistics Sweden (SCB) relevant for Swedish healthcare"
* ^status = #active
* http://electronichealth.se/CodeSystem/organization-ownership-scb#10 "Statligt kontrollerade enheter"
* http://electronichealth.se/CodeSystem/organization-ownership-scb#20 "Kommunalt kontrollerade enheter"
* http://electronichealth.se/CodeSystem/organization-ownership-scb#30 "Landstingskontrollerade enheter"
* http://electronichealth.se/CodeSystem/organization-ownership-scb#41 "Privat svenskkontrollerade enheter utan koncerntillhörighet"
* http://electronichealth.se/CodeSystem/organization-ownership-scb#42 "Privat svenskkontrollerade enheter med koncerntillhörighet"
* http://electronichealth.se/CodeSystem/organization-ownership-scb#50 "Utlandskontrollerade enheter"

ValueSet: SEBaseOrganizationLegalFormVS
Id: SEBaseOrganizationLegalFormVS
Title: "SE ValueSet for organization legal forms"
Description: "This value set contains legal forms of organizations from the Swedish Tax Agency."
* ^status = #active
* http://electronichealth.se/CodeSystem/skatteverket-jurform#10 "Fysiska personer"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#21 "Enkla bolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#22 "Partrederier"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#23 "Värdepappersfonder"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#31 "Handelsbolag, kommanditbolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#32 "Gruvbolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#41 "Bankaktiebolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#42 "Försäkringsaktiebolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#43 "Europabolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#49 "Övriga aktiebolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#51 "Ekonomiska föreningar"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#53 "Bostadsrättsföreningar"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#54 "Kooperativ hyresrättsförening"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#55 "Europakooperativ och Europeisk gruppering för territoriellt samarbete – EGTS"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#61 "Ideella föreningar"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#62 "Samfälligheter"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#63 "Registrerade trossamfund"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#71 "Familjestiftelser"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#72 "Övriga stiftelser och fonder"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#81 "Statliga enheter"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#82 "Kommuner"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#83 "Kommunalförbund"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#84 "Regioner"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#85 "Allmänna försäkringskassor"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#87 "Offentliga korporationer och anstalter"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#88 "Hypoteksföreningar"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#89 "Regionala statliga myndigheter"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#91 "Oskiftade dödsbon"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#92 "Ömsesidiga försäkringsbolag"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#93 "Sparbanker"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#94 "Understödsföreningar och Försäkringsföreningar"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#95 "Arbetslöshetskassor"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#96 "Utländska juridiska personer"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#98 "Övriga svenska juridiska personer bildade enligt särskild lagstiftning"
* http://electronichealth.se/CodeSystem/skatteverket-jurform#99 "Juridisk form ej utredd"

ValueSet: SEBaseOrganizationTypeVS
Id: SEBaseOrganizationTypeVS
Title: "SE ValueSet for organization types"
Description: "This value sets contains organization types relevant for Swedish healthcare"
* ^status = #active
* $SCT#143591000052106 "vårdgivare"

Instance: OrganizationExample1
InstanceOf: SEBaseOrganization
Description: "Organization example"
* id = "Organization1"
* identifier[hsaid].value = "SE2321000131-P000000123457"

Profile: SEBaseOrganizationalUnit
Parent: Organization
Title: "SE base profile for organizational unit"
Description: "This is the base Organizational Unit profile to be used when profiling on Organization in a Swedish context"
* ^status = #active
* ^experimental = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice for swedish organizational unit ID"
* identifier contains hsaid 0..*
* identifier[hsaid].system = $hsaid // (exactly)
* identifier[hsaid].type = $v2-0203#PRN // (exactly)

* type from SEBaseOrganizationalUnitTypeVS (extensible)

* extension contains $organization-period named period 0..1

* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "contained"
* contained ^slicing.rules = #open
* contained contains SEBaseBusiness 0..1

ValueSet: SEBaseOrganizationalUnitTypeVS
Id: SEBaseOrganizationalUnitTypeVS
Title: "SE ValueSet for organizational unit types"
Description: "This value sets contains organizational unit types relevant for Swedish healthcare"
* $SCT#43741000 "vårdenhet"

Instance: CardiologyBusiness
InstanceOf: SEBaseBusiness
Usage: #inline
* providedBy.reference = "#"
* category[+].coding = urn:oid:1.2.752.129.2.2.1.3#1116 "Kardiologi"


Instance: OrganizationalUnitExample1
InstanceOf: SEBaseOrganizationalUnit
Usage: #example
Title: "Kardiologiska kliniken US, Linköping"
Description: "Example of a SEBaseOrganizationalUnit with contained cardiology business."
* contained = CardiologyBusiness
* name = "Kardiologiska kliniken US, Linköping"
* identifier[+].system = "urn:oid:1.2.752.29.4.19"
* identifier[=].value = "SE2321000040-xxxxxx"
* extension[period].valuePeriod.start = 1970-01-01T00:00:00+01:00
* type = http://snomed.info/sct|http://snomed.info/sct/45991000052106#43741000 "vårdenhet"