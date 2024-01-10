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
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+25]
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxDebugWarnings"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 1
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
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugToolboxDebugWarnings"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+17]
  GETUPVAL R1 1
  LOADK R3 K4 ["ToolboxDebugFlags"]
  NAMECALL R1 R1 K5 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R0
  JUMP [+9]
  LOADK R4 K6 ["ToolboxDebugWarnings"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R0 R2 K7 ["Value"]
  JUMP [+1]
  LOADNIL R0
  JUMPIFEQKNIL R0 [+2]
  RETURN R0 1
  GETUPVAL R1 2
  NAMECALL R1 R1 K8 ["HasInternalPermission"]
  CALL R1 1 -1
  RETURN R1 -1

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
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["Workspace"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["StudioService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R7 R0 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["SharedFlags"]
  GETTABLEKS R4 R5 K14 ["getFFlagToolboxFixSquishOutputSpam"]
  CALL R3 1 1
  DUPCLOSURE R4 K15 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R5 K16 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R6 K17 [PROTO_2]
  CAPTURE VAL R1
  NEWTABLE R7 16 0
  GETIMPORT R8 K5 [game]
  LOADK R10 K18 ["DebugToolboxRunTests"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K20 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K21 ["shouldRunTests"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K22 ["DebugToolboxRunRhodiumTests"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K23 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K24 ["shouldRunRhodiumTests"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K25 ["DebugToolboxRunJest3Tests"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K26 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K27 ["shouldRunJest3Tests"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K28 ["DebugToolboxLogTestsQuiet"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K29 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K30 ["logTestsQuiet"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K31 ["DebugToolboxDisableTooltips"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K32 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K33 ["shouldDisableTooltips"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K34 ["DebugToolboxDebugUrls"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K35 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K36 ["shouldDebugUrls"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K37 ["DebugToolboxDebugState"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K38 [PROTO_9]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K39 ["shouldDebugState"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K40 ["DebugToolboxLogAnalytics"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K41 [PROTO_10]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K42 ["shouldLogAnalytics"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K43 ["DebugToolboxDebugWarnings"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K44 [PROTO_11]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K45 ["shouldDebugWarnings"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K46 ["DebugToolboxLogSettings"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K47 [PROTO_12]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K48 ["shouldLogSettings"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K49 ["DebugToolboxUseTestCustomLocale"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K50 [PROTO_13]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K51 ["shouldUseTestCustomLocale"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K52 ["DebugToolboxUseTestRealLocaleId"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K53 [PROTO_14]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K54 ["shouldUseTestRealLocale"]
  GETIMPORT R8 K5 [game]
  LOADK R10 K55 ["DebugToolboxDebugOverrideAssetLoading"]
  LOADB R11 0
  NAMECALL R8 R8 K19 ["DefineFastFlag"]
  CALL R8 3 0
  DUPCLOSURE R8 K56 [PROTO_15]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K57 ["shouldDebugOverrideAssetLoading"]
  DUPCLOSURE R8 K58 [PROTO_16]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K59 ["getOrCreateTestCustomLocale"]
  DUPCLOSURE R8 K60 [PROTO_17]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K61 ["getOrCreateTestRealLocale"]
  RETURN R7 1
