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
  GETTABLEKS R3 R1 K8 ["createReducer"]
  DUPTABLE R4 K20 [{"diagnostics", "completedScripts", "selection", "expansion", "initialIssueCounts", "revertedScripts", "filter", "replaceRules", "replaceProgress", "messageKey", "processResult"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["diagnostics"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["completedScripts"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["selection"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K12 ["expansion"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K13 ["initialIssueCounts"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K14 ["revertedScripts"]
  LOADNIL R5
  SETTABLEKS R5 R4 K15 ["filter"]
  NEWTABLE R5 0 5
  DUPTABLE R6 K24 [{"FromText", "ToText", "Enabled"}]
  LOADK R7 K25 ["Left Arm"]
  SETTABLEKS R7 R6 K21 ["FromText"]
  LOADK R7 K26 [""]
  SETTABLEKS R7 R6 K22 ["ToText"]
  LOADB R7 1
  SETTABLEKS R7 R6 K23 ["Enabled"]
  DUPTABLE R7 K24 [{"FromText", "ToText", "Enabled"}]
  LOADK R8 K27 ["Right Arm"]
  SETTABLEKS R8 R7 K21 ["FromText"]
  LOADK R8 K26 [""]
  SETTABLEKS R8 R7 K22 ["ToText"]
  LOADB R8 1
  SETTABLEKS R8 R7 K23 ["Enabled"]
  DUPTABLE R8 K24 [{"FromText", "ToText", "Enabled"}]
  LOADK R9 K28 ["Left Leg"]
  SETTABLEKS R9 R8 K21 ["FromText"]
  LOADK R9 K26 [""]
  SETTABLEKS R9 R8 K22 ["ToText"]
  LOADB R9 1
  SETTABLEKS R9 R8 K23 ["Enabled"]
  DUPTABLE R9 K24 [{"FromText", "ToText", "Enabled"}]
  LOADK R10 K29 ["Right Leg"]
  SETTABLEKS R10 R9 K21 ["FromText"]
  LOADK R10 K26 [""]
  SETTABLEKS R10 R9 K22 ["ToText"]
  LOADB R10 1
  SETTABLEKS R10 R9 K23 ["Enabled"]
  DUPTABLE R10 K24 [{"FromText", "ToText", "Enabled"}]
  LOADK R11 K30 ["Torso"]
  SETTABLEKS R11 R10 K21 ["FromText"]
  LOADK R11 K26 [""]
  SETTABLEKS R11 R10 K22 ["ToText"]
  LOADB R11 1
  SETTABLEKS R11 R10 K23 ["Enabled"]
  SETLIST R5 R6 5 [1]
  SETTABLEKS R5 R4 K16 ["replaceRules"]
  LOADNIL R5
  SETTABLEKS R5 R4 K17 ["replaceProgress"]
  LOADK R5 K26 [""]
  SETTABLEKS R5 R4 K18 ["messageKey"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K19 ["processResult"]
  DUPTABLE R5 K42 [{"SetDiagnostics", "SetFilter", "SetScriptSelection", "SetScriptExpansion", "SetCompletedScripts", "SetInitialIssueCounts", "SetRevertedScripts", "SetReplaceRules", "SetReplaceProgress", "SetProgressBarMessageKey", "SetProcessResult"}]
  DUPCLOSURE R6 K43 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K31 ["SetDiagnostics"]
  DUPCLOSURE R6 K44 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K32 ["SetFilter"]
  DUPCLOSURE R6 K45 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K33 ["SetScriptSelection"]
  DUPCLOSURE R6 K46 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K34 ["SetScriptExpansion"]
  DUPCLOSURE R6 K47 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K35 ["SetCompletedScripts"]
  DUPCLOSURE R6 K48 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K36 ["SetInitialIssueCounts"]
  DUPCLOSURE R6 K49 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K37 ["SetRevertedScripts"]
  DUPCLOSURE R6 K50 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K38 ["SetReplaceRules"]
  DUPCLOSURE R6 K51 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K39 ["SetReplaceProgress"]
  DUPCLOSURE R6 K52 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K40 ["SetProgressBarMessageKey"]
  DUPCLOSURE R6 K53 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K41 ["SetProcessResult"]
  CALL R3 2 1
  RETURN R3 1
