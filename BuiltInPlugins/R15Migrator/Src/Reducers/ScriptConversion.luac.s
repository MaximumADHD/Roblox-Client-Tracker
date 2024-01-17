PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"diagnostics"}]
  GETTABLEKS R5 R1 K2 ["diagnostics"]
  SETTABLEKS R5 R4 K2 ["diagnostics"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"filter"}]
  GETTABLEKS R5 R1 K2 ["filter"]
  SETTABLEKS R5 R4 K2 ["filter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selection"}]
  GETTABLEKS R5 R1 K2 ["selection"]
  SETTABLEKS R5 R4 K2 ["selection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"expansion"}]
  GETTABLEKS R5 R1 K2 ["expansion"]
  SETTABLEKS R5 R4 K2 ["expansion"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"completedScripts"}]
  GETTABLEKS R5 R1 K2 ["completedScripts"]
  SETTABLEKS R5 R4 K2 ["completedScripts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"initialIssueCounts"}]
  GETTABLEKS R5 R1 K2 ["initialIssueCounts"]
  SETTABLEKS R5 R4 K2 ["initialIssueCounts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"revertedScripts"}]
  GETTABLEKS R5 R1 K2 ["revertedScripts"]
  SETTABLEKS R5 R4 K2 ["revertedScripts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"replaceRules"}]
  GETTABLEKS R5 R1 K2 ["replaceRules"]
  SETTABLEKS R5 R4 K2 ["replaceRules"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"replaceProgress"}]
  GETTABLEKS R5 R1 K4 ["progress"]
  SETTABLEKS R5 R4 K2 ["replaceProgress"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"messageKey"}]
  GETTABLEKS R5 R1 K2 ["messageKey"]
  SETTABLEKS R5 R4 K2 ["messageKey"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"processResult"}]
  GETTABLEKS R5 R1 K2 ["processResult"]
  SETTABLEKS R5 R4 K2 ["processResult"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"backedupScripts"}]
  GETTABLEKS R5 R1 K2 ["backedupScripts"]
  SETTABLEKS R5 R4 K2 ["backedupScripts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"backedupScripts"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["backedupScripts"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Util"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["SaveInterface"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K11 ["createReducer"]
  DUPTABLE R6 K24 [{"diagnostics", "completedScripts", "selection", "expansion", "initialIssueCounts", "revertedScripts", "filter", "replaceRules", "replaceProgress", "messageKey", "processResult", "backedupScripts"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K12 ["diagnostics"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K13 ["completedScripts"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K14 ["selection"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K15 ["expansion"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K16 ["initialIssueCounts"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K17 ["revertedScripts"]
  LOADNIL R7
  SETTABLEKS R7 R6 K18 ["filter"]
  GETTABLEKS R7 R4 K25 ["getScriptConversionRules"]
  CALL R7 0 1
  JUMPIF R7 [+54]
  NEWTABLE R7 0 5
  DUPTABLE R8 K29 [{"FromText", "ToText", "Enabled"}]
  LOADK R9 K30 ["Left Arm"]
  SETTABLEKS R9 R8 K26 ["FromText"]
  LOADK R9 K31 [""]
  SETTABLEKS R9 R8 K27 ["ToText"]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["Enabled"]
  DUPTABLE R9 K29 [{"FromText", "ToText", "Enabled"}]
  LOADK R10 K32 ["Right Arm"]
  SETTABLEKS R10 R9 K26 ["FromText"]
  LOADK R10 K31 [""]
  SETTABLEKS R10 R9 K27 ["ToText"]
  LOADB R10 1
  SETTABLEKS R10 R9 K28 ["Enabled"]
  DUPTABLE R10 K29 [{"FromText", "ToText", "Enabled"}]
  LOADK R11 K33 ["Left Leg"]
  SETTABLEKS R11 R10 K26 ["FromText"]
  LOADK R11 K31 [""]
  SETTABLEKS R11 R10 K27 ["ToText"]
  LOADB R11 1
  SETTABLEKS R11 R10 K28 ["Enabled"]
  DUPTABLE R11 K29 [{"FromText", "ToText", "Enabled"}]
  LOADK R12 K34 ["Right Leg"]
  SETTABLEKS R12 R11 K26 ["FromText"]
  LOADK R12 K31 [""]
  SETTABLEKS R12 R11 K27 ["ToText"]
  LOADB R12 1
  SETTABLEKS R12 R11 K28 ["Enabled"]
  DUPTABLE R12 K29 [{"FromText", "ToText", "Enabled"}]
  LOADK R13 K35 ["Torso"]
  SETTABLEKS R13 R12 K26 ["FromText"]
  LOADK R13 K31 [""]
  SETTABLEKS R13 R12 K27 ["ToText"]
  LOADB R13 1
  SETTABLEKS R13 R12 K28 ["Enabled"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K19 ["replaceRules"]
  LOADNIL R7
  SETTABLEKS R7 R6 K20 ["replaceProgress"]
  LOADK R7 K31 [""]
  SETTABLEKS R7 R6 K21 ["messageKey"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K22 ["processResult"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K23 ["backedupScripts"]
  DUPTABLE R7 K49 [{"SetDiagnostics", "SetFilter", "SetScriptSelection", "SetScriptExpansion", "SetCompletedScripts", "SetInitialIssueCounts", "SetRevertedScripts", "SetReplaceRules", "SetReplaceProgress", "SetProgressBarMessageKey", "SetProcessResult", "SetScriptBackups", "ResetScriptBackups"}]
  DUPCLOSURE R8 K50 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K36 ["SetDiagnostics"]
  DUPCLOSURE R8 K51 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K37 ["SetFilter"]
  DUPCLOSURE R8 K52 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K38 ["SetScriptSelection"]
  DUPCLOSURE R8 K53 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K39 ["SetScriptExpansion"]
  DUPCLOSURE R8 K54 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K40 ["SetCompletedScripts"]
  DUPCLOSURE R8 K55 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K41 ["SetInitialIssueCounts"]
  DUPCLOSURE R8 K56 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K42 ["SetRevertedScripts"]
  DUPCLOSURE R8 K57 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K43 ["SetReplaceRules"]
  DUPCLOSURE R8 K58 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K44 ["SetReplaceProgress"]
  DUPCLOSURE R8 K59 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K45 ["SetProgressBarMessageKey"]
  DUPCLOSURE R8 K60 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K46 ["SetProcessResult"]
  DUPCLOSURE R8 K61 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K47 ["SetScriptBackups"]
  DUPCLOSURE R8 K62 [PROTO_12]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K48 ["ResetScriptBackups"]
  CALL R5 2 1
  RETURN R5 1
