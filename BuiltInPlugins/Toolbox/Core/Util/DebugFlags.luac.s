PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["ToolboxDebugFlags"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["ToolboxDebugFlags"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIF R0 [+11]
  GETIMPORT R1 K4 [Instance.new]
  LOADK R2 K5 ["Folder"]
  CALL R1 1 1
  MOVE R0 R1
  LOADK R1 K0 ["ToolboxDebugFlags"]
  SETTABLEKS R1 R0 K6 ["Name"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K7 ["Parent"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  LOADK R3 K0 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  MOVE R4 R0
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K2 ["Value"]
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxRunTests"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["RunTests"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxRunRhodiumTests"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["RunRhodiumTests"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_5:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxRunJest3Tests"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["RunJest3Tests"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_6:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxLogTestsQuiet"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["LogTestsQuiet"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_7:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxDisableTooltips"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxDisableTooltips"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_8:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxDebugUrls"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxDebugUrls"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_9:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxDebugState"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxDebugState"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_10:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxLogAnalytics"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxLogAnalytics"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_11:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxDebugWarnings"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxDebugWarnings"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_12:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxLogSettings"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxLogSettings"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_13:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxUseTestCustomLocale"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxUseTestCustomLocale"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_14:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxUseTestRealLocaleId"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxUseTestRealLocaleId"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_15:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxDebugOverrideAssetLoading"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  RETURN R0 1
  LOADK R4 K6 ["ToolboxDebugOverrideAssetLoading"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_16:
  GETUPVAL R1 0
  LOADK R3 K0 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+11]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["Folder"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K0 ["ToolboxDebugFlags"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K7 ["Parent"]
  MOVE R0 R1
  LOADK R3 K8 ["ToolboxCustomLocale"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+13]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K9 ["StringValue"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K8 ["ToolboxCustomLocale"]
  SETTABLEKS R2 R1 K6 ["Name"]
  LOADK R2 K10 ["CustomLocale"]
  SETTABLEKS R2 R1 K11 ["Value"]
  SETTABLEKS R0 R1 K7 ["Parent"]
  RETURN R1 1

PROTO_17:
  GETUPVAL R1 0
  LOADK R3 K0 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+11]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["Folder"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K0 ["ToolboxDebugFlags"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K7 ["Parent"]
  MOVE R0 R1
  LOADK R3 K8 ["ToolboxRealLocale"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+13]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K9 ["StringValue"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K8 ["ToolboxRealLocale"]
  SETTABLEKS R2 R1 K6 ["Name"]
  LOADK R2 K10 ["en-us"]
  SETTABLEKS R2 R1 K11 ["Value"]
  SETTABLEKS R0 R1 K7 ["Parent"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R2 K5 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R3 K6 [PROTO_2]
  CAPTURE VAL R0
  NEWTABLE R4 16 0
  GETIMPORT R5 K1 [game]
  LOADK R7 K7 ["DebugToolboxRunTests"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K9 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K10 ["shouldRunTests"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K11 ["DebugToolboxRunRhodiumTests"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K12 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K13 ["shouldRunRhodiumTests"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K14 ["DebugToolboxRunJest3Tests"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K15 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K16 ["shouldRunJest3Tests"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K17 ["DebugToolboxLogTestsQuiet"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K18 [PROTO_6]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K19 ["logTestsQuiet"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K20 ["DebugToolboxDisableTooltips"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K21 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K22 ["shouldDisableTooltips"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K23 ["DebugToolboxDebugUrls"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K24 [PROTO_8]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K25 ["shouldDebugUrls"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K26 ["DebugToolboxDebugState"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K27 [PROTO_9]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K28 ["shouldDebugState"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K29 ["DebugToolboxLogAnalytics"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K30 [PROTO_10]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K31 ["shouldLogAnalytics"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K32 ["DebugToolboxDebugWarnings"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K33 [PROTO_11]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K34 ["shouldDebugWarnings"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K35 ["DebugToolboxLogSettings"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K36 [PROTO_12]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K37 ["shouldLogSettings"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K38 ["DebugToolboxUseTestCustomLocale"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K39 [PROTO_13]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K40 ["shouldUseTestCustomLocale"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K41 ["DebugToolboxUseTestRealLocaleId"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K42 [PROTO_14]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K43 ["shouldUseTestRealLocale"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K44 ["DebugToolboxDebugOverrideAssetLoading"]
  LOADB R8 0
  NAMECALL R5 R5 K8 ["DefineFastFlag"]
  CALL R5 3 0
  DUPCLOSURE R5 K45 [PROTO_15]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K46 ["shouldDebugOverrideAssetLoading"]
  DUPCLOSURE R5 K47 [PROTO_16]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K48 ["getOrCreateTestCustomLocale"]
  DUPCLOSURE R5 K49 [PROTO_17]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K50 ["getOrCreateTestRealLocale"]
  RETURN R4 1
