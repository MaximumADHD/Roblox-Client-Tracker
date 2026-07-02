PROTO_0:
        0 DUPTABLE                         R0 K15 [{[1], ["completedScripts"], ["selection"], ["expansion"], ["initialIssueCounts"], ["revertedScripts"], ["filter"] = , ["replaceRules"], ["replaceProgress"] = , ["messageKey"] = "", ["processResult"], ["analyticsSent"] = False}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["diagnostics"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["completedScripts"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["selection"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["expansion"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K4 ["initialIssueCounts"]
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K5 ["revertedScripts"]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K16 ["getScriptConversionRules"]
       28 CALL                             R1 0 1
       29 JUMPIF                           R1 ; [+9]
       30 NEWTABLE                         R1 0 5
       32 DUPTABLE                         R2 K23 [{["FromText"] = "Left Arm", ["ToText"] = "LeftUpperArm", ["Enabled"] = True}]
       33 DUPTABLE                         R3 K26 [{["FromText"] = "Right Arm", ["ToText"] = "RightUpperArm", ["Enabled"] = True}]
       34 DUPTABLE                         R4 K29 [{["FromText"] = "Left Leg", ["ToText"] = "LeftUpperLeg", ["Enabled"] = True}]
       35 DUPTABLE                         R5 K32 [{["FromText"] = "Right Leg", ["ToText"] = "RightUpperLeg", ["Enabled"] = True}]
       36 DUPTABLE                         R6 K35 [{["FromText"] = "Torso", ["ToText"] = "LowerTorso", ["Enabled"] = True}]
       37 SETLIST                          R1 R2 5 [1]
       39 SETTABLEKS                       R1 R0 K8 ["replaceRules"]
       41 NEWTABLE                         R1 0 0
       43 SETTABLEKS                       R1 R0 K12 ["processResult"]
       45 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"diagnostics"}]
        7 GETTABLEKS                       R5 R1 K2 ["diagnostics"]
        9 SETTABLEKS                       R5 R4 K2 ["diagnostics"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"filter"}]
        7 GETTABLEKS                       R5 R1 K2 ["filter"]
        9 SETTABLEKS                       R5 R4 K2 ["filter"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selection"}]
        7 GETTABLEKS                       R5 R1 K2 ["selection"]
        9 SETTABLEKS                       R5 R4 K2 ["selection"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"expansion"}]
        7 GETTABLEKS                       R5 R1 K2 ["expansion"]
        9 SETTABLEKS                       R5 R4 K2 ["expansion"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"completedScripts"}]
        7 GETTABLEKS                       R5 R1 K2 ["completedScripts"]
        9 SETTABLEKS                       R5 R4 K2 ["completedScripts"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"initialIssueCounts"}]
        7 GETTABLEKS                       R5 R1 K2 ["initialIssueCounts"]
        9 SETTABLEKS                       R5 R4 K2 ["initialIssueCounts"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"revertedScripts"}]
        7 GETTABLEKS                       R5 R1 K2 ["revertedScripts"]
        9 SETTABLEKS                       R5 R4 K2 ["revertedScripts"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"replaceRules"}]
        7 GETTABLEKS                       R5 R1 K2 ["replaceRules"]
        9 SETTABLEKS                       R5 R4 K2 ["replaceRules"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"replaceProgress"}]
        7 GETTABLEKS                       R5 R1 K4 ["progress"]
        9 SETTABLEKS                       R5 R4 K2 ["replaceProgress"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"messageKey"}]
        7 GETTABLEKS                       R5 R1 K2 ["messageKey"]
        9 SETTABLEKS                       R5 R4 K2 ["messageKey"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"processResult"}]
        7 GETTABLEKS                       R5 R1 K2 ["processResult"]
        9 SETTABLEKS                       R5 R4 K2 ["processResult"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"analyticsSent"}]
        7 GETTABLEKS                       R5 R1 K2 ["analyticsSent"]
        9 SETTABLEKS                       R5 R4 K2 ["analyticsSent"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Util"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["SaveInterface"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 GETTABLEKS                       R6 R1 K13 ["createReducer"]
       34 MOVE                             R7 R5
       35 CALL                             R7 0 1
       36 DUPTABLE                         R8 K27 [{"SetDiagnostics", "SetFilter", "SetScriptSelection", "SetScriptExpansion", "SetCompletedScripts", "SetInitialIssueCounts", "SetRevertedScripts", "SetReplaceRules", "SetReplaceProgress", "SetProgressBarMessageKey", "SetProcessResult", "ResetAllScriptConversion", "SetScriptAnalyticsSent"}]
       37 DUPCLOSURE                       R9 K28 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R9 R8 K14 ["SetDiagnostics"]
       41 DUPCLOSURE                       R9 K29 [PROTO_2]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R9 R8 K15 ["SetFilter"]
       45 DUPCLOSURE                       R9 K30 [PROTO_3]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R9 R8 K16 ["SetScriptSelection"]
       49 DUPCLOSURE                       R9 K31 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R9 R8 K17 ["SetScriptExpansion"]
       53 DUPCLOSURE                       R9 K32 [PROTO_5]
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R9 R8 K18 ["SetCompletedScripts"]
       57 DUPCLOSURE                       R9 K33 [PROTO_6]
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R9 R8 K19 ["SetInitialIssueCounts"]
       61 DUPCLOSURE                       R9 K34 [PROTO_7]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R9 R8 K20 ["SetRevertedScripts"]
       65 DUPCLOSURE                       R9 K35 [PROTO_8]
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R9 R8 K21 ["SetReplaceRules"]
       69 DUPCLOSURE                       R9 K36 [PROTO_9]
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R9 R8 K22 ["SetReplaceProgress"]
       73 DUPCLOSURE                       R9 K37 [PROTO_10]
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R9 R8 K23 ["SetProgressBarMessageKey"]
       77 DUPCLOSURE                       R9 K38 [PROTO_11]
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R9 R8 K24 ["SetProcessResult"]
       81 DUPCLOSURE                       R9 K39 [PROTO_12]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R9 R8 K25 ["ResetAllScriptConversion"]
       86 DUPCLOSURE                       R9 K40 [PROTO_13]
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R9 R8 K26 ["SetScriptAnalyticsSent"]
       90 CALL                             R6 2 1
       91 RETURN                           R6 1
