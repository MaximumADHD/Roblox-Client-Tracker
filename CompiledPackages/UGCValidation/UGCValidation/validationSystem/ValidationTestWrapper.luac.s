PROTO_0:
  DUPTABLE R5 K6 [{"validationJobId", "validationSource", "validationEnum", "status", "durationMs", "additional_info"}]
  GETTABLEKS R6 R1 K7 ["jobId"]
  SETTABLEKS R6 R5 K0 ["validationJobId"]
  GETTABLEKS R7 R1 K8 ["consumerConfig"]
  GETTABLEKS R6 R7 K9 ["source"]
  SETTABLEKS R6 R5 K1 ["validationSource"]
  SETTABLEKS R0 R5 K2 ["validationEnum"]
  SETTABLEKS R2 R5 K3 ["status"]
  SETTABLEKS R4 R5 K4 ["durationMs"]
  SETTABLEKS R3 R5 K5 ["additional_info"]
  GETUPVAL R6 0
  GETUPVAL R8 1
  DUPTABLE R9 K11 [{"customFields"}]
  SETTABLEKS R5 R9 K10 ["customFields"]
  NAMECALL R6 R6 K12 ["LogEvent"]
  CALL R6 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["run"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getValidationModule"]
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R4 R3 K1 ["required_data"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R1 R8
  JUMPIFEQKNIL R9 [+7]
  GETTABLE R9 R1 R8
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["DATA_FETCH_FAILURE"]
  JUMPIFNOTEQ R9 R10 [+29]
  GETUPVAL R9 2
  MOVE R10 R0
  MOVE R11 R1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K3 ["Status"]
  GETTABLEKS R12 R13 K4 ["CANNOT_START"]
  LOADK R13 K5 [""]
  LOADN R14 0
  CALL R9 5 0
  DUPTABLE R9 K9 [{"status", "errorTranslationContexts", "internalData"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K3 ["Status"]
  GETTABLEKS R10 R11 K4 ["CANNOT_START"]
  SETTABLEKS R10 R9 K6 ["status"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K7 ["errorTranslationContexts"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K8 ["internalData"]
  RETURN R9 1
  FORGLOOP R4 2 [-38]
  GETTABLEKS R4 R3 K10 ["prereq_tests"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R2 R8
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K3 ["Status"]
  GETTABLEKS R10 R11 K11 ["PASS"]
  JUMPIFEQ R9 R10 [+29]
  GETUPVAL R9 2
  MOVE R10 R0
  MOVE R11 R1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K3 ["Status"]
  GETTABLEKS R12 R13 K4 ["CANNOT_START"]
  LOADK R13 K5 [""]
  LOADN R14 0
  CALL R9 5 0
  DUPTABLE R9 K9 [{"status", "errorTranslationContexts", "internalData"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K3 ["Status"]
  GETTABLEKS R10 R11 K4 ["CANNOT_START"]
  SETTABLEKS R10 R9 K6 ["status"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K7 ["errorTranslationContexts"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K8 ["internalData"]
  RETURN R9 1
  FORGLOOP R4 2 [-37]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K12 ["new"]
  MOVE R5 R0
  CALL R4 1 1
  GETIMPORT R5 K14 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CALL R5 1 2
  JUMPIF R5 [+21]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+14]
  GETIMPORT R7 K16 [print]
  LOADK R8 K17 ["Validation error:"]
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R7 K16 [print]
  LOADK R8 K18 ["As this is in debug mode, we will re-call the function for a full error trace: "]
  CALL R7 1 0
  GETTABLEKS R7 R3 K19 ["run"]
  MOVE R8 R4
  MOVE R9 R1
  CALL R7 2 0
  MOVE R9 R6
  NAMECALL R7 R4 K20 ["_err"]
  CALL R7 2 0
  NAMECALL R7 R4 K21 ["_complete"]
  CALL R7 1 1
  GETUPVAL R8 2
  MOVE R9 R0
  MOVE R10 R1
  GETTABLEKS R11 R7 K6 ["status"]
  GETTABLEKS R12 R7 K22 ["telemetryContext"]
  GETTABLEKS R13 R7 K23 ["duration"]
  CALL R8 5 0
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["util"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["validationSystem"]
  GETTABLEKS R3 R4 K8 ["ValidationEnums"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["validationSystem"]
  GETTABLEKS R4 R5 K9 ["ValidationModuleLoader"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["validationSystem"]
  GETTABLEKS R6 R7 K10 ["dataFetchModules"]
  GETTABLEKS R5 R6 K11 ["FetchAllDesiredData"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K7 ["validationSystem"]
  GETTABLEKS R6 R7 K12 ["ValidationReporter"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K13 ["flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
  CALL R6 1 1
  GETIMPORT R7 K16 [game]
  LOADK R9 K17 ["TelemetryService"]
  NAMECALL R7 R7 K18 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K16 [game]
  LOADK R10 K19 ["SingleValidationTelemetryThrottleHundrethsPercent"]
  LOADN R11 16
  NAMECALL R8 R8 K20 ["DefineFastInt"]
  CALL R8 3 0
  DUPTABLE R8 K27 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R9 K28 ["UgcSingleValidationFinished"]
  SETTABLEKS R9 R8 K21 ["eventName"]
  NEWTABLE R9 0 1
  LOADK R10 K29 ["EventIngest"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K22 ["backends"]
  GETIMPORT R9 K16 [game]
  LOADK R11 K19 ["SingleValidationTelemetryThrottleHundrethsPercent"]
  NAMECALL R9 R9 K30 ["GetFastInt"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["throttlingPercentage"]
  NEWTABLE R9 0 3
  LOADN R10 25
  LOADN R11 9
  LOADN R12 24
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K24 ["lastUpdated"]
  LOADK R9 K31 ["Report single ugc validation result to EventIngest backend."]
  SETTABLEKS R9 R8 K25 ["description"]
  LOADK R9 K32 ["https://create.roblox.com/docs/art/validation-errors"]
  SETTABLEKS R9 R8 K26 ["links"]
  DUPCLOSURE R9 K33 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R8
  DUPCLOSURE R10 K34 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R10 1
