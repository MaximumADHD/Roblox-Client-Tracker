PROTO_0:
  DUPTABLE R0 K12 [{"diagnostics", "completedScripts", "selection", "expansion", "initialIssueCounts", "revertedScripts", "filter", "replaceRules", "replaceProgress", "messageKey", "processResult", "analyticsSent"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["diagnostics"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["completedScripts"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["selection"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["expansion"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["initialIssueCounts"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["revertedScripts"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["filter"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K13 ["getScriptConversionRules"]
  CALL R1 0 1
  JUMPIF R1 [+54]
  NEWTABLE R1 0 5
  DUPTABLE R2 K17 [{"FromText", "ToText", "Enabled"}]
  LOADK R3 K18 ["Left Arm"]
  SETTABLEKS R3 R2 K14 ["FromText"]
  LOADK R3 K19 ["LeftUpperArm"]
  SETTABLEKS R3 R2 K15 ["ToText"]
  LOADB R3 1
  SETTABLEKS R3 R2 K16 ["Enabled"]
  DUPTABLE R3 K17 [{"FromText", "ToText", "Enabled"}]
  LOADK R4 K20 ["Right Arm"]
  SETTABLEKS R4 R3 K14 ["FromText"]
  LOADK R4 K21 ["RightUpperArm"]
  SETTABLEKS R4 R3 K15 ["ToText"]
  LOADB R4 1
  SETTABLEKS R4 R3 K16 ["Enabled"]
  DUPTABLE R4 K17 [{"FromText", "ToText", "Enabled"}]
  LOADK R5 K22 ["Left Leg"]
  SETTABLEKS R5 R4 K14 ["FromText"]
  LOADK R5 K23 ["LeftUpperLeg"]
  SETTABLEKS R5 R4 K15 ["ToText"]
  LOADB R5 1
  SETTABLEKS R5 R4 K16 ["Enabled"]
  DUPTABLE R5 K17 [{"FromText", "ToText", "Enabled"}]
  LOADK R6 K24 ["Right Leg"]
  SETTABLEKS R6 R5 K14 ["FromText"]
  LOADK R6 K25 ["RightUpperLeg"]
  SETTABLEKS R6 R5 K15 ["ToText"]
  LOADB R6 1
  SETTABLEKS R6 R5 K16 ["Enabled"]
  DUPTABLE R6 K17 [{"FromText", "ToText", "Enabled"}]
  LOADK R7 K26 ["Torso"]
  SETTABLEKS R7 R6 K14 ["FromText"]
  LOADK R7 K27 ["LowerTorso"]
  SETTABLEKS R7 R6 K15 ["ToText"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["Enabled"]
  SETLIST R1 R2 5 [1]
  SETTABLEKS R1 R0 K7 ["replaceRules"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["replaceProgress"]
  LOADK R1 K28 [""]
  SETTABLEKS R1 R0 K9 ["messageKey"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K10 ["processResult"]
  LOADB R1 0
  SETTABLEKS R1 R0 K11 ["analyticsSent"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"diagnostics"}]
  GETTABLEKS R5 R1 K2 ["diagnostics"]
  SETTABLEKS R5 R4 K2 ["diagnostics"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"filter"}]
  GETTABLEKS R5 R1 K2 ["filter"]
  SETTABLEKS R5 R4 K2 ["filter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selection"}]
  GETTABLEKS R5 R1 K2 ["selection"]
  SETTABLEKS R5 R4 K2 ["selection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"expansion"}]
  GETTABLEKS R5 R1 K2 ["expansion"]
  SETTABLEKS R5 R4 K2 ["expansion"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"completedScripts"}]
  GETTABLEKS R5 R1 K2 ["completedScripts"]
  SETTABLEKS R5 R4 K2 ["completedScripts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"initialIssueCounts"}]
  GETTABLEKS R5 R1 K2 ["initialIssueCounts"]
  SETTABLEKS R5 R4 K2 ["initialIssueCounts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"revertedScripts"}]
  GETTABLEKS R5 R1 K2 ["revertedScripts"]
  SETTABLEKS R5 R4 K2 ["revertedScripts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"replaceRules"}]
  GETTABLEKS R5 R1 K2 ["replaceRules"]
  SETTABLEKS R5 R4 K2 ["replaceRules"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"replaceProgress"}]
  GETTABLEKS R5 R1 K4 ["progress"]
  SETTABLEKS R5 R4 K2 ["replaceProgress"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"messageKey"}]
  GETTABLEKS R5 R1 K2 ["messageKey"]
  SETTABLEKS R5 R4 K2 ["messageKey"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"processResult"}]
  GETTABLEKS R5 R1 K2 ["processResult"]
  SETTABLEKS R5 R4 K2 ["processResult"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R3 0 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"analyticsSent"}]
  GETTABLEKS R5 R1 K2 ["analyticsSent"]
  SETTABLEKS R5 R4 K2 ["analyticsSent"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["SaveInterface"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R4
  GETTABLEKS R6 R1 K13 ["createReducer"]
  MOVE R7 R5
  CALL R7 0 1
  DUPTABLE R8 K27 [{"SetDiagnostics", "SetFilter", "SetScriptSelection", "SetScriptExpansion", "SetCompletedScripts", "SetInitialIssueCounts", "SetRevertedScripts", "SetReplaceRules", "SetReplaceProgress", "SetProgressBarMessageKey", "SetProcessResult", "ResetAllScriptConversion", "SetScriptAnalyticsSent"}]
  DUPCLOSURE R9 K28 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K14 ["SetDiagnostics"]
  DUPCLOSURE R9 K29 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K15 ["SetFilter"]
  DUPCLOSURE R9 K30 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K16 ["SetScriptSelection"]
  DUPCLOSURE R9 K31 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K17 ["SetScriptExpansion"]
  DUPCLOSURE R9 K32 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K18 ["SetCompletedScripts"]
  DUPCLOSURE R9 K33 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K19 ["SetInitialIssueCounts"]
  DUPCLOSURE R9 K34 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K20 ["SetRevertedScripts"]
  DUPCLOSURE R9 K35 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K21 ["SetReplaceRules"]
  DUPCLOSURE R9 K36 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K22 ["SetReplaceProgress"]
  DUPCLOSURE R9 K37 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K23 ["SetProgressBarMessageKey"]
  DUPCLOSURE R9 K38 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K24 ["SetProcessResult"]
  DUPCLOSURE R9 K39 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K25 ["ResetAllScriptConversion"]
  DUPCLOSURE R9 K40 [PROTO_13]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K26 ["SetScriptAnalyticsSent"]
  CALL R6 2 1
  RETURN R6 1
