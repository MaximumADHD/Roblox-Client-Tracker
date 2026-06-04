PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETTABLEKS                       R5 R0 K2 ["plugins"]
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
        8 JUMPIFNOTEQ                      R7 R1 ; [+10]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K3 ["Dictionary"]
       13 GETTABLEKS                       R9 R9 K4 ["join"]
       15 MOVE                             R10 R8
       16 MOVE                             R11 R2
       17 CALL                             R9 2 1
       18 SETTABLE                         R9 R3 R7
       19 FORGLOOP                         R4 2 ; [-12]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       24 GETTABLEKS                       R4 R4 K4 ["join"]
       26 MOVE                             R5 R0
       27 DUPTABLE                         R6 K5 [{"plugins"}]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K3 ["Dictionary"]
       31 GETTABLEKS                       R7 R7 K4 ["join"]
       33 GETTABLEKS                       R8 R0 K2 ["plugins"]
       35 MOVE                             R9 R3
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K2 ["plugins"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K3 ["Dictionary"]
       11 GETTABLEKS                       R8 R8 K4 ["join"]
       13 GETTABLE                         R9 R2 R6
       14 JUMPIF                           R9 ; [+2]
       15 NEWTABLE                         R9 0 0
       17 MOVE                             R10 R7
       18 CALL                             R8 2 1
       19 SETTABLE                         R8 R2 R6
       20 FORGLOOP                         R3 2 ; [-13]
       22 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"plugins"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["None"]
       10 SETTABLEKS                       R5 R4 K2 ["plugins"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"plugins"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["plugins"]
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 NEWTABLE                         R7 1 0
       19 GETTABLEKS                       R8 R1 K4 ["pluginId"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K5 ["None"]
       24 SETTABLE                         R9 R7 R8
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K2 ["plugins"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+20]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        6 GETTABLEKS                       R2 R2 K1 ["join"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K3 [{"plugins"}]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R6 R0 K2 ["plugins"]
       13 JUMPIF                           R6 ; [+2]
       14 NEWTABLE                         R6 0 0
       16 GETTABLEKS                       R7 R1 K4 ["pluginData"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K2 ["plugins"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
       26 GETTABLEKS                       R2 R2 K1 ["join"]
       28 MOVE                             R3 R0
       29 DUPTABLE                         R4 K3 [{"plugins"}]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       33 GETTABLEKS                       R5 R5 K1 ["join"]
       35 GETTABLEKS                       R6 R0 K2 ["plugins"]
       37 JUMPIF                           R6 ; [+2]
       38 NEWTABLE                         R6 0 0
       40 GETTABLEKS                       R7 R1 K4 ["pluginData"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K2 ["plugins"]
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 DUPTABLE                         R5 K2 [{"enabled"}]
        5 GETTABLEKS                       R6 R1 K1 ["enabled"]
        7 SETTABLEKS                       R6 R5 K1 ["enabled"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 DUPTABLE                         R5 K2 [{"status"}]
        5 GETTABLEKS                       R6 R1 K1 ["status"]
        7 JUMPIF                           R6 ; [+3]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K3 ["None"]
       11 SETTABLEKS                       R6 R5 K1 ["status"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Flags"]
       29 GETTABLEKS                       R4 R4 K10 ["getFFlagStudioFixPluginManagement429"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R5 K12 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 GETTABLEKS                       R6 R2 K13 ["createReducer"]
       38 DUPTABLE                         R7 K15 [{"plugins"}]
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R7 K14 ["plugins"]
       42 DUPTABLE                         R8 K21 [{"ClearAllPluginData", "RemovePluginData", "SetLoadedPluginData", "SetPluginEnabledState", "SetPluginUpdateStatus"}]
       43 DUPCLOSURE                       R10 K23 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 ORK                              R9 R10 K22 []
       46 SETTABLEKS                       R9 R8 K16 ["ClearAllPluginData"]
       48 DUPCLOSURE                       R10 K24 [PROTO_3]
       49 CAPTURE                          VAL R1
       50 ORK                              R9 R10 K22 []
       51 SETTABLEKS                       R9 R8 K17 ["RemovePluginData"]
       53 DUPCLOSURE                       R9 K25 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R9 R8 K18 ["SetLoadedPluginData"]
       59 DUPCLOSURE                       R9 K26 [PROTO_5]
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R9 R8 K19 ["SetPluginEnabledState"]
       63 DUPCLOSURE                       R9 K27 [PROTO_6]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R9 R8 K20 ["SetPluginUpdateStatus"]
       68 CALL                             R6 2 -1
       69 RETURN                           R6 -1
