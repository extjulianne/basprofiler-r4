Profile: SEBaseHealthcareService
Parent: HealthcareService
Id: SEBaseHealthcareService
Title: "SE base profile for healthcare service"
Description: "This is the base HealthcareService profile to be used when profiling on HealthcareService in a Swedish context"
* ^status = #active
* ^experimental = false
* type from SEBaseHealthcareServicesVS (extensible)
* characteristic from SEBaseEncounterMeansVS (example)
* category from SEBaseHSAVerksamhetVS (extensible)
* extension contains SEBaseHealthcareServicePeriodExtension named period 0..1

Extension: SEBaseHealthcareServicePeriodExtension
Id: SEBaseHealthcareServicePeriodExtension
Description: "Extension for healthcare service period"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* value[x] only Period

Instance: CardiologyBusiness
InstanceOf: SEBaseHealthcareService
Usage: #example
* category[+].coding = urn:oid:1.2.752.129.2.2.1.3#1116 "Kardiologi"

ValueSet: SEBaseHSAVerksamhetVS
Title: "HSA valueset for business classification codes"
Description: "Codes used to describe the type of care business an entity can operate."
* ^status = #active
* ^experimental = false
* include codes from system urn:oid:1.2.752.129.2.2.1.3

ValueSet: SEBaseHealthcareServicesVS
Title: "Valueset for types of healthcare services"
Description: "Codes used to describe the type of care healthcare services an entity can provide."
* ^status = #active
* ^experimental = false

ValueSet: SEBaseEncounterMeansVS
Title: "Valueset for means of encounters"
Description: "Codes used to describe the means with which an encounter is taking place."
* ^status = #active
* ^experimental = false
* http://snomed.info/sct|http://snomed.info/sct/45991000052106#185317003 "telefonkontakt"
* http://snomed.info/sct|http://snomed.info/sct/45991000052106#185316007 "distanskontakt"
* http://snomed.info/sct|http://snomed.info/sct/45991000052106#63431000052109 "distanskontakt via videolänk"
* http://snomed.info/sct|http://snomed.info/sct/45991000052106#58171000052102 "fysisk vårdkontakt"