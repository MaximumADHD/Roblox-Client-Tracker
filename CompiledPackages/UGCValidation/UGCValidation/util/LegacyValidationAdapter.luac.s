PROTO_0:
  GETTABLEKS R1 R0 K0 ["key"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R4
  JUMPIFNOT R6 [+2]
  GETTABLEKS R6 R2 K0 ["pass"]
  MOVE R4 R6
  GETTABLEKS R7 R2 K1 ["errorTranslationContexts"]
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+47]
  JUMPIFNOTEQKNIL R5 [+3]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R2 K1 ["errorTranslationContexts"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETIMPORT R11 K3 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE VAL R3
  CAPTURE VAL R10
  CALL R11 1 2
  JUMPIF R11 [+16]
  GETUPVAL R13 0
  CALL R13 0 1
  JUMPIFNOT R13 [+11]
  GETIMPORT R13 K5 [print]
  LOADK R15 K6 ["Falling back for %* translation due to %*"]
  GETTABLEKS R17 R10 K7 ["key"]
  MOVE R18 R12
  NAMECALL R15 R15 K8 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  CALL R13 1 0
  GETTABLEKS R12 R10 K7 ["key"]
  FASTCALL1 ASSERT R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K10 [assert]
  CALL R13 1 0
  FASTCALL2 TABLE_INSERT R5 R12 [+5]
  MOVE R14 R5
  MOVE R15 R12
  GETIMPORT R13 K13 [table.insert]
  CALL R13 2 0
  FORGLOOP R6 2 [-36]
  RETURN R4 2

PROTO_3:
  LOADK R4 K0 ["Toolbox"]
  GETTABLEKS R5 R0 K1 ["bypassFlags"]
  JUMPIFNOT R5 [+9]
  GETTABLEKS R6 R0 K1 ["bypassFlags"]
  GETTABLEKS R5 R6 K2 ["studioPluginName"]
  JUMPIFNOT R5 [+4]
  GETTABLEKS R5 R0 K1 ["bypassFlags"]
  GETTABLEKS R4 R5 K2 ["studioPluginName"]
  GETTABLEKS R6 R0 K3 ["instances"]
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K5 [assert]
  CALL R5 1 0
  GETTABLEKS R6 R0 K6 ["assetTypeEnum"]
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K5 [assert]
  CALL R5 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["ValidateAsset"]
  GETTABLEKS R6 R0 K3 ["instances"]
  GETTABLEKS R7 R0 K6 ["assetTypeEnum"]
  DUPTABLE R8 K12 [{"source", "enforceR15FolderStructure", "telemetry_bundle_id", "telemetry_root_id"}]
  SETTABLEKS R4 R8 K8 ["source"]
  GETTABLEKS R10 R0 K14 ["requireAllFolders"]
  ORK R9 R10 K13 [False]
  SETTABLEKS R9 R8 K9 ["enforceR15FolderStructure"]
  SETTABLEKS R1 R8 K10 ["telemetry_bundle_id"]
  LOADK R9 K15 [""]
  SETTABLEKS R9 R8 K11 ["telemetry_root_id"]
  CALL R5 3 1
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+23]
  GETTABLEKS R7 R0 K1 ["bypassFlags"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R8 R0 K1 ["bypassFlags"]
  GETTABLEKS R7 R8 K16 ["localizationCallback"]
  FASTCALL1 ASSERT R7 [+2]
  GETIMPORT R6 K5 [assert]
  CALL R6 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["combineResultsIntoLegacy"]
  MOVE R7 R2
  MOVE R8 R3
  MOVE R9 R5
  GETTABLEKS R11 R0 K1 ["bypassFlags"]
  GETTABLEKS R10 R11 K16 ["localizationCallback"]
  CALL R6 4 -1
  RETURN R6 -1
  RETURN R2 2

PROTO_4:
  LOADK R6 K0 ["Toolbox"]
  GETTABLEKS R7 R2 K1 ["bypassFlags"]
  JUMPIFNOT R7 [+9]
  GETTABLEKS R8 R2 K1 ["bypassFlags"]
  GETTABLEKS R7 R8 K2 ["studioPluginName"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R2 K1 ["bypassFlags"]
  GETTABLEKS R6 R7 K2 ["studioPluginName"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["ValidateFinalizedBundle"]
  MOVE R8 R0
  MOVE R9 R1
  DUPTABLE R10 K8 [{"source", "enforceR15FolderStructure", "telemetry_bundle_id", "telemetry_root_id"}]
  SETTABLEKS R6 R10 K4 ["source"]
  GETTABLEKS R12 R2 K10 ["requireAllFolders"]
  ORK R11 R12 K9 [False]
  SETTABLEKS R11 R10 K5 ["enforceR15FolderStructure"]
  SETTABLEKS R3 R10 K6 ["telemetry_bundle_id"]
  LOADK R11 K11 [""]
  SETTABLEKS R11 R10 K7 ["telemetry_root_id"]
  CALL R7 3 1
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+26]
  GETTABLEKS R9 R2 K1 ["bypassFlags"]
  FASTCALL1 ASSERT R9 [+2]
  GETIMPORT R8 K13 [assert]
  CALL R8 1 0
  GETTABLEKS R10 R2 K1 ["bypassFlags"]
  GETTABLEKS R9 R10 K14 ["localizationCallback"]
  FASTCALL1 ASSERT R9 [+2]
  GETIMPORT R8 K13 [assert]
  CALL R8 1 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K15 ["combineResultsIntoLegacy"]
  MOVE R9 R4
  MOVE R10 R5
  MOVE R11 R7
  GETTABLEKS R13 R2 K1 ["bypassFlags"]
  GETTABLEKS R12 R13 K14 ["localizationCallback"]
  CALL R8 4 -1
  RETURN R8 -1
  RETURN R4 2

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
  GETTABLEKS R3 R4 K8 ["ValidationManager"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K9 ["flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagUGCValidationCombineEntrypointResults"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
  CALL R4 1 1
  NEWTABLE R5 4 0
  DUPCLOSURE R6 K12 [PROTO_0]
  DUPCLOSURE R7 K13 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R7 R5 K14 ["combineResultsIntoLegacy"]
  DUPCLOSURE R7 K15 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R7 R5 K16 ["studioRFUAssetValidation"]
  DUPCLOSURE R7 K17 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R7 R5 K18 ["studioRFUBundleValidation"]
  RETURN R5 1
