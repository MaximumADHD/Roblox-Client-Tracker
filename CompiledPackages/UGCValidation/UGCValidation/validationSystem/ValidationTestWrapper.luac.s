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
  GETTABLEKS R2 R0 K0 ["requiredData"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R7 R1 R6
  JUMPIFEQKNIL R7 [+7]
  GETTABLE R7 R1 R6
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["DATA_FETCH_FAILURE"]
  JUMPIFNOTEQ R7 R8 [+6]
  LOADB R7 0
  LOADK R9 K2 ["Missing required data "]
  MOVE R10 R6
  CONCAT R8 R9 R10
  RETURN R7 2
  FORGLOOP R2 2 [-15]
  GETIMPORT R2 K4 [next]
  GETTABLEKS R3 R0 K5 ["requiredAqsReturnSchema"]
  CALL R2 1 1
  JUMPIFEQKNIL R2 [+23]
  GETTABLEKS R2 R1 K6 ["aqsSummaryData"]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R3 R0 K5 ["requiredAqsReturnSchema"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R8 1
  GETTABLE R9 R2 R6
  MOVE R10 R7
  CALL R8 2 1
  JUMPIF R8 [+3]
  LOADB R8 0
  LOADK R9 K7 ["AQS schema does not match expectations"]
  RETURN R8 2
  FORGLOOP R3 2 [-9]
  JUMP [+3]
  LOADB R3 0
  LOADK R4 K8 ["AQS fetch failed"]
  RETURN R3 2
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["run"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getValidationModule"]
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R4 R3 K1 ["prereqTests"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R2 R8
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["Status"]
  GETTABLEKS R10 R11 K3 ["PASS"]
  JUMPIFEQ R9 R10 [+36]
  DUPTABLE R9 K10 [{"validationEnum", "status", "errorTranslationContexts", "internalData", "duration", "telemetryContext"}]
  SETTABLEKS R0 R9 K4 ["validationEnum"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["Status"]
  GETTABLEKS R10 R11 K11 ["CANNOT_START"]
  SETTABLEKS R10 R9 K5 ["status"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K6 ["errorTranslationContexts"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K7 ["internalData"]
  LOADN R10 0
  SETTABLEKS R10 R9 K8 ["duration"]
  LOADK R10 K12 ["Failed prereq"]
  SETTABLEKS R10 R9 K9 ["telemetryContext"]
  GETUPVAL R10 2
  MOVE R11 R0
  MOVE R12 R1
  GETTABLEKS R13 R9 K5 ["status"]
  GETTABLEKS R14 R9 K9 ["telemetryContext"]
  GETTABLEKS R15 R9 K8 ["duration"]
  CALL R10 5 0
  RETURN R9 1
  FORGLOOP R4 2 [-44]
  GETUPVAL R4 3
  MOVE R5 R3
  MOVE R6 R1
  CALL R4 2 2
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K13 ["new"]
  MOVE R7 R0
  CALL R6 1 1
  JUMPIFNOT R4 [+30]
  GETIMPORT R7 K15 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R1
  CALL R7 1 2
  JUMPIF R7 [+34]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+14]
  GETIMPORT R9 K17 [print]
  LOADK R10 K18 ["Validation error:"]
  MOVE R11 R8
  CALL R9 2 0
  GETIMPORT R9 K17 [print]
  LOADK R10 K19 ["As this is in debug mode, we will re-call the function for a full error trace: "]
  CALL R9 1 0
  GETTABLEKS R9 R3 K20 ["run"]
  MOVE R10 R6
  MOVE R11 R1
  CALL R9 2 0
  MOVE R11 R8
  NAMECALL R9 R6 K21 ["err"]
  CALL R9 2 0
  JUMP [+12]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETIMPORT R7 K17 [print]
  LOADK R8 K22 ["Validation data fetch error:"]
  MOVE R9 R5
  CALL R7 2 0
  MOVE R9 R5
  NAMECALL R7 R6 K21 ["err"]
  CALL R7 2 0
  NAMECALL R7 R6 K23 ["complete"]
  CALL R7 1 1
  GETUPVAL R8 2
  MOVE R9 R0
  MOVE R10 R1
  GETTABLEKS R11 R7 K5 ["status"]
  GETTABLEKS R12 R7 K9 ["telemetryContext"]
  GETTABLEKS R13 R7 K8 ["duration"]
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
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K5 ["util"]
  GETTABLEKS R9 R10 K21 ["verifySummaryFormat"]
  CALL R8 1 1
  DUPTABLE R9 K28 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R10 K29 ["UgcSingleValidationFinished"]
  SETTABLEKS R10 R9 K22 ["eventName"]
  NEWTABLE R10 0 1
  LOADK R11 K30 ["EventIngest"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K23 ["backends"]
  GETIMPORT R10 K16 [game]
  LOADK R12 K19 ["SingleValidationTelemetryThrottleHundrethsPercent"]
  NAMECALL R10 R10 K31 ["GetFastInt"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["throttlingPercentage"]
  NEWTABLE R10 0 3
  LOADN R11 25
  LOADN R12 9
  LOADN R13 24
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K25 ["lastUpdated"]
  LOADK R10 K32 ["Report single ugc validation result to EventIngest backend."]
  SETTABLEKS R10 R9 K26 ["description"]
  LOADK R10 K33 ["https://create.roblox.com/docs/art/validation-errors"]
  SETTABLEKS R10 R9 K27 ["links"]
  DUPCLOSURE R10 K34 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R9
  DUPCLOSURE R11 K35 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R8
  DUPCLOSURE R12 K36 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R12 1
