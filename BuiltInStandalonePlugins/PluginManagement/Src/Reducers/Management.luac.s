PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETTABLEKS                       R5 R0 K2 ["plugins"]
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
        8 JUMPIFNOTEQ                      R7 R1 ; [+10]
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R10 R11 K3 ["Dictionary"]
       13 GETTABLEKS                       R9 R10 K4 ["join"]
       15 MOVE                             R10 R8
       16 MOVE                             R11 R2
       17 CALL                             R9 2 1
       18 SETTABLE                         R9 R3 R7
       19 FORGLOOP                         R4 2 ; [-12]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K3 ["Dictionary"]
       24 GETTABLEKS                       R4 R5 K4 ["join"]
       26 MOVE                             R5 R0
       27 DUPTABLE                         R6 K5 [{"plugins"}]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K3 ["Dictionary"]
       31 GETTABLEKS                       R7 R8 K4 ["join"]
       33 GETTABLEKS                       R8 R0 K2 ["plugins"]
       35 MOVE                             R9 R3
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K2 ["plugins"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"plugins"}]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["None"]
       10 SETTABLEKS                       R5 R4 K2 ["plugins"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"plugins"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["plugins"]
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 NEWTABLE                         R7 1 0
       19 GETTABLEKS                       R8 R1 K4 ["pluginId"]
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R9 R10 K5 ["None"]
       24 SETTABLE                         R9 R7 R8
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K2 ["plugins"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"plugins"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["plugins"]
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 GETTABLEKS                       R7 R1 K4 ["pluginData"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K2 ["plugins"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 DUPTABLE                         R5 K2 [{"enabled"}]
        5 GETTABLEKS                       R6 R1 K1 ["enabled"]
        7 SETTABLEKS                       R6 R5 K1 ["enabled"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 DUPTABLE                         R5 K2 [{"status"}]
        5 GETTABLEKS                       R6 R1 K1 ["status"]
        7 JUMPIF                           R6 ; [+3]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K3 ["None"]
       11 SETTABLEKS                       R6 R5 K1 ["status"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 GETTABLEKS                       R4 R2 K9 ["createReducer"]
       27 DUPTABLE                         R5 K11 [{"plugins"}]
       28 LOADNIL                          R6
       29 SETTABLEKS                       R6 R5 K10 ["plugins"]
       31 DUPTABLE                         R6 K17 [{"ClearAllPluginData", "RemovePluginData", "SetLoadedPluginData", "SetPluginEnabledState", "SetPluginUpdateStatus"}]
       32 DUPCLOSURE                       R8 K19 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 ORK                              R7 R8 K18 []
       35 SETTABLEKS                       R7 R6 K12 ["ClearAllPluginData"]
       37 DUPCLOSURE                       R8 K20 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 ORK                              R7 R8 K18 []
       40 SETTABLEKS                       R7 R6 K13 ["RemovePluginData"]
       42 DUPCLOSURE                       R7 K21 [PROTO_3]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R7 R6 K14 ["SetLoadedPluginData"]
       46 DUPCLOSURE                       R7 K22 [PROTO_4]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R7 R6 K15 ["SetPluginEnabledState"]
       50 DUPCLOSURE                       R7 K23 [PROTO_5]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R7 R6 K16 ["SetPluginUpdateStatus"]
       55 CALL                             R4 2 -1
       56 RETURN                           R4 -1
