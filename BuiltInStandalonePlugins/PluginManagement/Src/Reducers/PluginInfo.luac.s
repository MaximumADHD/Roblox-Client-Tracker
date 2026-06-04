PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["PluginInfo reducer is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       12 GETTABLEKS                       R2 R2 K4 ["join"]
       14 MOVE                             R3 R0
       15 DUPTABLE                         R4 K6 [{"plugins"}]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       19 GETTABLEKS                       R5 R5 K4 ["join"]
       21 GETTABLEKS                       R6 R0 K5 ["plugins"]
       23 NEWTABLE                         R7 1 0
       25 GETTABLEKS                       R8 R1 K7 ["pluginId"]
       27 DUPTABLE                         R9 K16 [{"installStatus", "installationMsg", "installProgress", "name", "description", "versionId", "created", "updated"}]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K17 ["UNKNOWN"]
       31 SETTABLEKS                       R10 R9 K8 ["installStatus"]
       33 LOADK                            R10 K18 [""]
       34 SETTABLEKS                       R10 R9 K9 ["installationMsg"]
       36 LOADN                            R10 0
       37 SETTABLEKS                       R10 R9 K10 ["installProgress"]
       39 LOADK                            R10 K18 [""]
       40 SETTABLEKS                       R10 R9 K11 ["name"]
       42 LOADK                            R10 K18 [""]
       43 SETTABLEKS                       R10 R9 K12 ["description"]
       45 LOADK                            R10 K18 [""]
       46 SETTABLEKS                       R10 R9 K13 ["versionId"]
       48 LOADK                            R10 K18 [""]
       49 SETTABLEKS                       R10 R9 K14 ["created"]
       51 LOADK                            R10 K18 [""]
       52 SETTABLEKS                       R10 R9 K15 ["updated"]
       54 SETTABLE                         R9 R7 R8
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K5 ["plugins"]
       58 CALL                             R2 2 -1
       59 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["PluginInfo reducer is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R3 R0 K3 ["plugins"]
       11 GETTABLEKS                       R4 R1 K4 ["pluginId"]
       13 GETTABLE                         R2 R3 R4
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K5 ["Dictionary"]
       19 GETTABLEKS                       R2 R2 K6 ["join"]
       21 MOVE                             R3 R0
       22 DUPTABLE                         R4 K7 [{"plugins"}]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K5 ["Dictionary"]
       26 GETTABLEKS                       R5 R5 K6 ["join"]
       28 GETTABLEKS                       R6 R0 K3 ["plugins"]
       30 NEWTABLE                         R7 1 0
       32 GETTABLEKS                       R8 R1 K4 ["pluginId"]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K8 ["None"]
       37 SETTABLE                         R9 R7 R8
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K3 ["plugins"]
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["PluginInfo reducer is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R4 R0 K3 ["plugins"]
       11 GETTABLEKS                       R5 R1 K4 ["pluginId"]
       13 GETTABLE                         R3 R4 R5
       14 GETIMPORT                        R4 K7 [string.format]
       16 LOADK                            R5 K8 ["No plugin entry found for %s"]
       17 GETTABLEKS                       R6 R1 K4 ["pluginId"]
       19 CALL                             R4 2 -1
       20 FASTCALL                         ASSERT ; [+2]
       21 GETIMPORT                        R2 K2 [assert]
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K9 ["Dictionary"]
       27 GETTABLEKS                       R2 R2 K10 ["join"]
       29 MOVE                             R3 R0
       30 DUPTABLE                         R4 K11 [{"plugins"}]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K9 ["Dictionary"]
       34 GETTABLEKS                       R5 R5 K10 ["join"]
       36 GETTABLEKS                       R6 R0 K3 ["plugins"]
       38 NEWTABLE                         R7 1 0
       40 GETTABLEKS                       R8 R1 K4 ["pluginId"]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K9 ["Dictionary"]
       45 GETTABLEKS                       R9 R9 K10 ["join"]
       47 GETTABLEKS                       R11 R0 K3 ["plugins"]
       49 GETTABLEKS                       R12 R1 K4 ["pluginId"]
       51 GETTABLE                         R10 R11 R12
       52 DUPTABLE                         R11 K17 [{"name", "description", "versionId", "created", "updated"}]
       53 GETTABLEKS                       R12 R1 K12 ["name"]
       55 SETTABLEKS                       R12 R11 K12 ["name"]
       57 GETTABLEKS                       R12 R1 K13 ["description"]
       59 SETTABLEKS                       R12 R11 K13 ["description"]
       61 GETTABLEKS                       R12 R1 K14 ["versionId"]
       63 SETTABLEKS                       R12 R11 K14 ["versionId"]
       65 GETTABLEKS                       R12 R1 K15 ["created"]
       67 SETTABLEKS                       R12 R11 K15 ["created"]
       69 GETTABLEKS                       R12 R1 K16 ["updated"]
       71 SETTABLEKS                       R12 R11 K16 ["updated"]
       73 CALL                             R9 2 1
       74 SETTABLE                         R9 R7 R8
       75 CALL                             R5 2 1
       76 SETTABLEKS                       R5 R4 K3 ["plugins"]
       78 CALL                             R2 2 -1
       79 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["PluginInfo reducer is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R4 R0 K3 ["plugins"]
       11 GETTABLEKS                       R5 R1 K4 ["pluginId"]
       13 GETTABLE                         R3 R4 R5
       14 GETIMPORT                        R4 K7 [string.format]
       16 LOADK                            R5 K8 ["No plugin entry found for %s"]
       17 GETTABLEKS                       R6 R1 K4 ["pluginId"]
       19 CALL                             R4 2 -1
       20 FASTCALL                         ASSERT ; [+2]
       21 GETIMPORT                        R2 K2 [assert]
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K9 ["Dictionary"]
       27 GETTABLEKS                       R2 R2 K10 ["join"]
       29 MOVE                             R3 R0
       30 DUPTABLE                         R4 K11 [{"plugins"}]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K9 ["Dictionary"]
       34 GETTABLEKS                       R5 R5 K10 ["join"]
       36 GETTABLEKS                       R6 R0 K3 ["plugins"]
       38 NEWTABLE                         R7 1 0
       40 GETTABLEKS                       R8 R1 K4 ["pluginId"]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K9 ["Dictionary"]
       45 GETTABLEKS                       R9 R9 K10 ["join"]
       47 GETTABLEKS                       R11 R0 K3 ["plugins"]
       49 GETTABLEKS                       R12 R1 K4 ["pluginId"]
       51 GETTABLE                         R10 R11 R12
       52 DUPTABLE                         R11 K14 [{"installStatus", "installationMsg"}]
       53 GETTABLEKS                       R12 R1 K15 ["statusCode"]
       55 SETTABLEKS                       R12 R11 K12 ["installStatus"]
       57 GETTABLEKS                       R12 R1 K16 ["message"]
       59 SETTABLEKS                       R12 R11 K13 ["installationMsg"]
       61 CALL                             R9 2 1
       62 SETTABLE                         R9 R7 R8
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K3 ["plugins"]
       66 CALL                             R2 2 -1
       67 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Rodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Constants"]
       38 GETTABLEKS                       R5 R5 K12 ["PluginInstalledStatus"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K13 ["createReducer"]
       43 DUPTABLE                         R6 K15 [{"plugins"}]
       44 NEWTABLE                         R7 0 0
       46 SETTABLEKS                       R7 R6 K14 ["plugins"]
       48 DUPTABLE                         R7 K20 [{"SetPluginId", "ClearPluginData", "SetPluginMetadata", "SetPluginInstallStatus"}]
       49 DUPCLOSURE                       R8 K21 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R8 R7 K16 ["SetPluginId"]
       55 DUPCLOSURE                       R8 K22 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R8 R7 K17 ["ClearPluginData"]
       60 DUPCLOSURE                       R8 K23 [PROTO_2]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R8 R7 K18 ["SetPluginMetadata"]
       65 DUPCLOSURE                       R8 K24 [PROTO_3]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R8 R7 K19 ["SetPluginInstallStatus"]
       70 CALL                             R5 2 -1
       71 RETURN                           R5 -1
