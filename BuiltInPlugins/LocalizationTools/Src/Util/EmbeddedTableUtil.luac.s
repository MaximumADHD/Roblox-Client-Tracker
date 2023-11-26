PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["IsTextScraperRunning"]
  JUMPIF R1 [+10]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["StartTextScraper"]
  CALL R1 1 0
  LOADK R3 K2 ["textCapture"]
  LOADK R4 K3 ["start"]
  NAMECALL R1 R0 K4 ["reportButtonPress"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K5 ["StopTextScraper"]
  CALL R1 1 0
  LOADK R3 K2 ["textCapture"]
  LOADK R4 K6 ["stop"]
  NAMECALL R1 R0 K4 ["reportButtonPress"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["PromptExportToCSVs"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R1 K1 [pcall]
  DUPCLOSURE R2 K2 [PROTO_1]
  CAPTURE UPVAL U0
  CALL R1 1 2
  JUMPIFNOT R1 [+6]
  LOADK R5 K3 ["export"]
  LOADK R6 K4 ["success"]
  NAMECALL R3 R0 K5 ["reportButtonPress"]
  CALL R3 3 0
  RETURN R0 0
  JUMPIFNOTEQKS R2 K6 ["No file selected"] [+7]
  LOADK R5 K3 ["export"]
  LOADK R6 K7 ["canceled"]
  NAMECALL R3 R0 K5 ["reportButtonPress"]
  CALL R3 3 0
  RETURN R0 0
  LOADK R5 K3 ["export"]
  LOADK R6 K8 ["error"]
  NAMECALL R3 R0 K5 ["reportButtonPress"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["PromptImportFromCSVs"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R3 0
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["expected FFlagLocalizedLocalizationToolsErrors to be false"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETIMPORT R1 K4 [pcall]
  DUPCLOSURE R2 K5 [PROTO_3]
  CAPTURE UPVAL U1
  CALL R1 1 2
  JUMPIFNOT R1 [+6]
  LOADK R5 K6 ["import"]
  LOADK R6 K7 ["success"]
  NAMECALL R3 R0 K8 ["reportButtonPress"]
  CALL R3 3 0
  RETURN R0 0
  JUMPIFNOTEQKS R2 K9 ["No file selected"] [+7]
  LOADK R5 K6 ["import"]
  LOADK R6 K10 ["canceled"]
  NAMECALL R3 R0 K8 ["reportButtonPress"]
  CALL R3 3 0
  RETURN R0 0
  LOADK R5 K6 ["import"]
  LOADK R6 K11 ["error"]
  NAMECALL R3 R0 K8 ["reportButtonPress"]
  CALL R3 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["PromptImportFromCSVs"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R3 0
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["expected FFlagLocalizedLocalizationToolsErrors to be true"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETIMPORT R2 K4 [pcall]
  DUPCLOSURE R3 K5 [PROTO_5]
  CAPTURE UPVAL U1
  CALL R2 1 2
  JUMPIFNOT R2 [+6]
  LOADK R6 K6 ["import"]
  LOADK R7 K7 ["success"]
  NAMECALL R4 R0 K8 ["reportButtonPress"]
  CALL R4 3 0
  RETURN R0 0
  JUMPIFNOTEQKS R3 K9 ["No file selected"] [+7]
  LOADK R6 K6 ["import"]
  LOADK R7 K10 ["canceled"]
  NAMECALL R4 R0 K8 ["reportButtonPress"]
  CALL R4 3 0
  RETURN R0 0
  GETIMPORT R4 K12 [warn]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["getTranslationForEngineError"]
  MOVE R6 R3
  MOVE R7 R1
  CALL R5 2 -1
  CALL R4 -1 0
  LOADK R6 K6 ["import"]
  LOADK R7 K14 ["error"]
  NAMECALL R4 R0 K8 ["reportButtonPress"]
  CALL R4 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 4 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["EnableLocalizedLocalizationToolsErrorsApi"]
  NAMECALL R2 R2 K5 ["GetEngineFeature"]
  CALL R2 2 1
  LOADNIL R3
  JUMPIFNOT R2 [+10]
  GETIMPORT R4 K7 [require]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K11 ["MapEngineErrors"]
  CALL R4 1 1
  MOVE R3 R4
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R4 R1 K13 ["toggleTextScraperEnabled"]
  DUPCLOSURE R4 K14 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R4 R1 K15 ["promptExportToCSVs"]
  DUPCLOSURE R4 K16 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R4 R1 K17 ["promptImportFromCSVs_deprecated"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE REF R3
  SETTABLEKS R4 R1 K18 ["promptImportFromCSVs"]
  CLOSEUPVALS R3
  RETURN R1 1
