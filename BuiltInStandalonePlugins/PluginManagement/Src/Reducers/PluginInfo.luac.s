PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"plugins"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["plugins"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["pluginId"]
       18 DUPTABLE                         R9 K13 [{"installStatus", "installationMsg", "installProgress", "name", "description", "versionId", "created", "updated"}]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K14 ["UNKNOWN"]
       22 SETTABLEKS                       R10 R9 K5 ["installStatus"]
       24 LOADK                            R10 K15 [""]
       25 SETTABLEKS                       R10 R9 K6 ["installationMsg"]
       27 LOADN                            R10 0
       28 SETTABLEKS                       R10 R9 K7 ["installProgress"]
       30 LOADK                            R10 K15 [""]
       31 SETTABLEKS                       R10 R9 K8 ["name"]
       33 LOADK                            R10 K15 [""]
       34 SETTABLEKS                       R10 R9 K9 ["description"]
       36 LOADK                            R10 K15 [""]
       37 SETTABLEKS                       R10 R9 K10 ["versionId"]
       39 LOADK                            R10 K15 [""]
       40 SETTABLEKS                       R10 R9 K11 ["created"]
       42 LOADK                            R10 K15 [""]
       43 SETTABLEKS                       R10 R9 K12 ["updated"]
       45 SETTABLE                         R9 R7 R8
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K2 ["plugins"]
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["plugins"]
        2 GETTABLEKS                       R4 R1 K1 ["pluginId"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       10 GETTABLEKS                       R2 R2 K3 ["join"]
       12 MOVE                             R3 R0
       13 DUPTABLE                         R4 K4 [{"plugins"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K2 ["Dictionary"]
       17 GETTABLEKS                       R5 R5 K3 ["join"]
       19 GETTABLEKS                       R6 R0 K0 ["plugins"]
       21 NEWTABLE                         R7 1 0
       23 GETTABLEKS                       R8 R1 K1 ["pluginId"]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K5 ["None"]
       28 SETTABLE                         R9 R7 R8
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K0 ["plugins"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["plugins"]
        2 GETTABLEKS                       R5 R1 K1 ["pluginId"]
        4 GETTABLE                         R3 R4 R5
        5 GETIMPORT                        R4 K4 [string.format]
        7 LOADK                            R5 K5 ["No plugin entry found for %s"]
        8 GETTABLEKS                       R6 R1 K1 ["pluginId"]
       10 CALL                             R4 2 -1
       11 FASTCALL                         ASSERT ; [+2]
       12 GETIMPORT                        R2 K7 [assert]
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["Dictionary"]
       18 GETTABLEKS                       R2 R2 K9 ["join"]
       20 MOVE                             R3 R0
       21 DUPTABLE                         R4 K10 [{"plugins"}]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K8 ["Dictionary"]
       25 GETTABLEKS                       R5 R5 K9 ["join"]
       27 GETTABLEKS                       R6 R0 K0 ["plugins"]
       29 NEWTABLE                         R7 1 0
       31 GETTABLEKS                       R8 R1 K1 ["pluginId"]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K8 ["Dictionary"]
       36 GETTABLEKS                       R9 R9 K9 ["join"]
       38 GETTABLEKS                       R11 R0 K0 ["plugins"]
       40 GETTABLEKS                       R12 R1 K1 ["pluginId"]
       42 GETTABLE                         R10 R11 R12
       43 DUPTABLE                         R11 K16 [{"name", "description", "versionId", "created", "updated"}]
       44 GETTABLEKS                       R12 R1 K11 ["name"]
       46 SETTABLEKS                       R12 R11 K11 ["name"]
       48 GETTABLEKS                       R12 R1 K12 ["description"]
       50 SETTABLEKS                       R12 R11 K12 ["description"]
       52 GETTABLEKS                       R12 R1 K13 ["versionId"]
       54 SETTABLEKS                       R12 R11 K13 ["versionId"]
       56 GETTABLEKS                       R12 R1 K14 ["created"]
       58 SETTABLEKS                       R12 R11 K14 ["created"]
       60 GETTABLEKS                       R12 R1 K15 ["updated"]
       62 SETTABLEKS                       R12 R11 K15 ["updated"]
       64 CALL                             R9 2 1
       65 SETTABLE                         R9 R7 R8
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K0 ["plugins"]
       69 CALL                             R2 2 -1
       70 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["plugins"]
        2 GETTABLEKS                       R5 R1 K1 ["pluginId"]
        4 GETTABLE                         R3 R4 R5
        5 GETIMPORT                        R4 K4 [string.format]
        7 LOADK                            R5 K5 ["No plugin entry found for %s"]
        8 GETTABLEKS                       R6 R1 K1 ["pluginId"]
       10 CALL                             R4 2 -1
       11 FASTCALL                         ASSERT ; [+2]
       12 GETIMPORT                        R2 K7 [assert]
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["Dictionary"]
       18 GETTABLEKS                       R2 R2 K9 ["join"]
       20 MOVE                             R3 R0
       21 DUPTABLE                         R4 K10 [{"plugins"}]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K8 ["Dictionary"]
       25 GETTABLEKS                       R5 R5 K9 ["join"]
       27 GETTABLEKS                       R6 R0 K0 ["plugins"]
       29 NEWTABLE                         R7 1 0
       31 GETTABLEKS                       R8 R1 K1 ["pluginId"]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K8 ["Dictionary"]
       36 GETTABLEKS                       R9 R9 K9 ["join"]
       38 GETTABLEKS                       R11 R0 K0 ["plugins"]
       40 GETTABLEKS                       R12 R1 K1 ["pluginId"]
       42 GETTABLE                         R10 R11 R12
       43 DUPTABLE                         R11 K13 [{"installStatus", "installationMsg"}]
       44 GETTABLEKS                       R12 R1 K14 ["statusCode"]
       46 SETTABLEKS                       R12 R11 K11 ["installStatus"]
       48 GETTABLEKS                       R12 R1 K15 ["message"]
       50 SETTABLEKS                       R12 R11 K12 ["installationMsg"]
       52 CALL                             R9 2 1
       53 SETTABLE                         R9 R7 R8
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K0 ["plugins"]
       57 CALL                             R2 2 -1
       58 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Constants"]
       29 GETTABLEKS                       R4 R4 K10 ["PluginInstalledStatus"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["createReducer"]
       34 DUPTABLE                         R5 K13 [{"plugins"}]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K12 ["plugins"]
       39 DUPTABLE                         R6 K18 [{"SetPluginId", "ClearPluginData", "SetPluginMetadata", "SetPluginInstallStatus"}]
       40 DUPCLOSURE                       R7 K19 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R7 R6 K14 ["SetPluginId"]
       45 DUPCLOSURE                       R7 K20 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R7 R6 K15 ["ClearPluginData"]
       49 DUPCLOSURE                       R7 K21 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R7 R6 K16 ["SetPluginMetadata"]
       53 DUPCLOSURE                       R7 K22 [PROTO_3]
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R7 R6 K17 ["SetPluginInstallStatus"]
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1
