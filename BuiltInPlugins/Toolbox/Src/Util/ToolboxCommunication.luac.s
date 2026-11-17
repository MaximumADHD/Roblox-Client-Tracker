PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["comms"]
        2 JUMPIFNOT                        R3 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 LOADK                            R4 K2 ["Toolbox"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R0 K0 ["comms"]
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 NAMECALL                         R3 R0 K3 ["setupCommunication"]
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["assetIds"]
        4 GETTABLEKS                       R5 R0 K1 ["positionOverride"]
        6 GETTABLEKS                       R6 R0 K2 ["scriptWarningOverride"]
        8 CALL                             R3 3 -1
        9 NAMECALL                         R1 R1 K3 ["dispatch"]
       11 CALL                             R1 -1 0
       12 GETTABLEKS                       R1 R0 K0 ["assetIds"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+9]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R3 2
       18 LOADK                            R4 K4 [""]
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K3 ["dispatch"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K7 [{"categoryName", "currentTab"}]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K8 ["FREE_MODELS"]
       30 GETTABLEKS                       R5 R5 K9 ["name"]
       32 SETTABLEKS                       R5 R4 K5 ["categoryName"]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K10 ["MARKETPLACE_KEY"]
       37 SETTABLEKS                       R5 R4 K6 ["currentTab"]
       39 CALL                             R3 1 -1
       40 NAMECALL                         R1 R1 K3 ["dispatch"]
       42 CALL                             R1 -1 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["comms"]
        2 LOADK                            R5 K1 ["SetTutorialLimits"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R3 R3 K2 ["OnInvoke"]
       11 CALL                             R3 3 0
       12 GETUPVAL                         R3 4
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETTABLEKS                       R3 R0 K0 ["comms"]
       16 LOADK                            R5 K3 ["ShowPackageVersionHistory"]
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R2
       19 NAMECALL                         R3 R3 K2 ["OnInvoke"]
       21 CALL                             R3 3 0
       22 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["comms"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETTABLEKS                       R1 R0 K0 ["comms"]
        6 GETTABLEKS                       R1 R1 K1 ["Fire"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETTABLEKS                       R1 R0 K0 ["comms"]
       11 GETVARARGS                       R3 -1
       12 NAMECALL                         R1 R1 K1 ["Fire"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ToolboxEnableOpenPackageVersionHistory"]
       10 NAMECALL                         R1 R1 K7 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["Util"]
       22 GETTABLEKS                       R3 R3 K13 ["CrossPluginCommunication"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R0 K14 ["Src"]
       28 GETTABLEKS                       R5 R5 K15 ["Actions"]
       30 GETTABLEKS                       R5 R5 K16 ["SetTutorialLimits"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Actions"]
       39 GETTABLEKS                       R6 R6 K17 ["UpdateSearchTerm"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Actions"]
       48 GETTABLEKS                       R7 R7 K18 ["UpdatePageInfo"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K9 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Src"]
       55 GETTABLEKS                       R8 R8 K19 ["Types"]
       57 GETTABLEKS                       R8 R8 K20 ["Category"]
       59 CALL                             R7 1 1
       60 DUPTABLE                         R8 K23 [{["comms"] = }]
       61 DUPCLOSURE                       R9 K24 [PROTO_0]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R9 R8 K25 ["setup"]
       65 DUPCLOSURE                       R9 K26 [PROTO_3]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R9 R8 K27 ["setupCommunication"]
       73 DUPCLOSURE                       R9 K28 [PROTO_4]
       74 SETTABLEKS                       R9 R8 K29 ["fire"]
       76 RETURN                           R8 1
