PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFEQKN                       R1 K1 [200] ; [+7]
        4 DUPTABLE                         R1 K5 [{["success"] = False, ["results"]}]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K4 ["results"]
        9 RETURN                           R1 1
       10 DUPTABLE                         R1 K7 [{["success"] = True, ["results"]}]
       11 GETTABLEKS                       R2 R0 K8 ["responseBody"]
       13 GETTABLEKS                       R2 R2 K4 ["results"]
       15 JUMPIF                           R2 ; [+2]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K4 ["results"]
       20 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to check permissions: "]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R4 K2 [tostring]
        6 CALL                             R4 1 1
        7 CONCAT                           R2 R3 R4
        8 CALL                             R1 1 0
        9 DUPTABLE                         R1 K6 [{["success"] = False, ["results"]}]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K5 ["results"]
       14 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 DUPTABLE                         R12 K3 [{"subject", "action", "assetId"}]
        7 DUPTABLE                         R13 K6 [{"subjectType", "subjectId"}]
        8 SETTABLEKS                       R1 R13 K4 ["subjectType"]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R15 R2
       12 GETIMPORT                        R14 K8 [tostring]
       14 CALL                             R14 1 1
       15 SETTABLEKS                       R14 R13 K5 ["subjectId"]
       17 SETTABLEKS                       R13 R12 K0 ["subject"]
       19 SETTABLEKS                       R3 R12 K1 ["action"]
       21 SETTABLEKS                       R9 R12 K2 ["assetId"]
       23 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       25 MOVE                             R11 R4
       26 GETIMPORT                        R10 K11 [table.insert]
       28 CALL                             R10 2 0
       29 FORGLOOP                         R5 2 ; [-24]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K12 ["CheckAssetsPermissionsRequest"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 1
       36 NAMECALL                         R5 R5 K13 ["makeRequest"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R7 K14 [PROTO_0]
       40 DUPCLOSURE                       R8 K15 [PROTO_1]
       41 CAPTURE                          UPVAL U1
       42 NAMECALL                         R5 R5 K16 ["andThen"]
       44 CALL                             R5 3 -1
       45 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Networking"]
       16 GETTABLEKS                       R3 R3 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Types"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K7 ["Networking"]
       28 GETTABLEKS                       R5 R5 K9 ["Urls"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K10 ["Utils"]
       35 GETTABLEKS                       R6 R6 K11 ["logIfDebug"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K12 [PROTO_2]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 RETURN                           R6 1
