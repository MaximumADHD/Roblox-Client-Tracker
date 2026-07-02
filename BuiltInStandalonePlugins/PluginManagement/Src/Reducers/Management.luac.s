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
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"plugins"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R6 R0 K2 ["plugins"]
       10 JUMPIF                           R6 ; [+2]
       11 NEWTABLE                         R6 0 0
       13 GETTABLEKS                       R7 R1 K4 ["pluginData"]
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R4 K2 ["plugins"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

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
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETTABLEKS                       R4 R4 K10 ["ClearAllPluginData"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Actions"]
       38 GETTABLEKS                       R5 R5 K11 ["RemovePluginData"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Actions"]
       47 GETTABLEKS                       R6 R6 K12 ["SetLoadedPluginData"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K9 ["Actions"]
       56 GETTABLEKS                       R7 R7 K13 ["SetPluginEnabledState"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Actions"]
       65 GETTABLEKS                       R8 R8 K14 ["SetPluginUpdateStatus"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K4 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K15 ["Util"]
       74 GETTABLEKS                       R9 R9 K16 ["Types"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K17 [PROTO_0]
       78 CAPTURE                          VAL R1
       79 DUPCLOSURE                       R10 K18 [PROTO_1]
       80 CAPTURE                          VAL R1
       81 GETTABLEKS                       R11 R2 K19 ["createReducer"]
       83 DUPTABLE                         R12 K22 [{["plugins"] = }]
       84 DUPTABLE                         R13 K23 [{"ClearAllPluginData", "RemovePluginData", "SetLoadedPluginData", "SetPluginEnabledState", "SetPluginUpdateStatus"}]
       85 DUPCLOSURE                       R14 K24 [PROTO_2]
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R14 R13 K10 ["ClearAllPluginData"]
       89 DUPCLOSURE                       R14 K25 [PROTO_3]
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R14 R13 K11 ["RemovePluginData"]
       93 DUPCLOSURE                       R14 K26 [PROTO_4]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R10
       96 SETTABLEKS                       R14 R13 K12 ["SetLoadedPluginData"]
       98 DUPCLOSURE                       R14 K27 [PROTO_5]
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R14 R13 K13 ["SetPluginEnabledState"]
      102 DUPCLOSURE                       R14 K28 [PROTO_6]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R14 R13 K14 ["SetPluginUpdateStatus"]
      107 CALL                             R11 2 -1
      108 RETURN                           R11 -1
