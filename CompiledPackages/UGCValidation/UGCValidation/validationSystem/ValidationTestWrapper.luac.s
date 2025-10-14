PROTO_0:
  DUPTABLE R5 K6 [{"validationJobId", "validationSource", "validationEnum", "status", "durationMs", "additional_info"}]
  GETTABLEKS R6 R1 K7 ["job_id"]
  SETTABLEKS R6 R5 K0 ["validationJobId"]
  GETTABLEKS R7 R1 K8 ["consumer_config"]
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
  NAMECALL R10 R8 K2 ["lower"]
  CALL R10 1 1
  GETTABLE R9 R1 R10
  JUMPIFNOTEQKNIL R9 [+29]
  GETUPVAL R9 1
  MOVE R10 R0
  MOVE R11 R1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K3 ["Status"]
  GETTABLEKS R12 R13 K4 ["CANNOT_START"]
  LOADK R13 K5 [""]
  LOADN R14 0
  CALL R9 5 0
  DUPTABLE R9 K9 [{"status", "errorTranslationContexts", "internalData"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["Status"]
  GETTABLEKS R10 R11 K4 ["CANNOT_START"]
  SETTABLEKS R10 R9 K6 ["status"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K7 ["errorTranslationContexts"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K8 ["internalData"]
  RETURN R9 1
  FORGLOOP R4 2 [-35]
  GETTABLEKS R4 R3 K10 ["prereq_tests"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R2 R8
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["Status"]
  GETTABLEKS R10 R11 K11 ["PASS"]
  JUMPIFEQ R9 R10 [+29]
  GETUPVAL R9 1
  MOVE R10 R0
  MOVE R11 R1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K3 ["Status"]
  GETTABLEKS R12 R13 K4 ["CANNOT_START"]
  LOADK R13 K5 [""]
  LOADN R14 0
  CALL R9 5 0
  DUPTABLE R9 K9 [{"status", "errorTranslationContexts", "internalData"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["Status"]
  GETTABLEKS R10 R11 K4 ["CANNOT_START"]
  SETTABLEKS R10 R9 K6 ["status"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K7 ["errorTranslationContexts"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K8 ["internalData"]
  RETURN R9 1
  FORGLOOP R4 2 [-37]
  GETUPVAL R5 3
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
  GETUPVAL R7 4
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
  GETUPVAL R8 1
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
  GETTABLEKS R6 R0 K7 ["validationSystem"]
  GETTABLEKS R5 R6 K10 ["ValidationReporter"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K11 ["flags"]
  GETTABLEKS R6 R7 K12 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
  CALL R5 1 1
  GETIMPORT R6 K14 [game]
  LOADK R8 K15 ["TelemetryService"]
  NAMECALL R6 R6 K16 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K14 [game]
  LOADK R9 K17 ["SingleValidationTelemetryThrottleHundrethsPercent"]
  LOADN R10 16
  NAMECALL R7 R7 K18 ["DefineFastInt"]
  CALL R7 3 0
  DUPTABLE R7 K25 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R8 K26 ["UgcSingleValidationFinished"]
  SETTABLEKS R8 R7 K19 ["eventName"]
  NEWTABLE R8 0 1
  LOADK R9 K27 ["EventIngest"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K20 ["backends"]
  GETIMPORT R8 K14 [game]
  LOADK R10 K17 ["SingleValidationTelemetryThrottleHundrethsPercent"]
  NAMECALL R8 R8 K28 ["GetFastInt"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["throttlingPercentage"]
  NEWTABLE R8 0 3
  LOADN R9 25
  LOADN R10 9
  LOADN R11 24
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K22 ["lastUpdated"]
  LOADK R8 K29 ["Report single ugc validation result to EventIngest backend."]
  SETTABLEKS R8 R7 K23 ["description"]
  LOADK R8 K30 ["https://create.roblox.com/docs/art/validation-errors"]
  SETTABLEKS R8 R7 K24 ["links"]
  DUPCLOSURE R8 K31 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R7
  DUPCLOSURE R9 K32 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R9 1
