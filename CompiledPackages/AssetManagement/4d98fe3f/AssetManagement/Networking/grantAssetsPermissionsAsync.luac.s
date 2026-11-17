PROTO_0:
        0 DUPTABLE                         R1 K2 [{"assetId", "grantToDependencies"}]
        1 SETTABLEKS                       R0 R1 K0 ["assetId"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K1 ["grantToDependencies"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["errors"]
        7 GETTABLEKS                       R2 R0 K2 ["responseCode"]
        9 JUMPIFEQKN                       R2 K3 [200] ; [+15]
       11 GETUPVAL                         R2 0
       12 LOADK                            R3 K4 ["Failed to grant permissions to assets: %*"]
       13 GETTABLEKS                       R5 R0 K2 ["responseCode"]
       15 NAMECALL                         R3 R3 K5 ["format"]
       17 CALL                             R3 2 1
       18 CALL                             R2 1 0
       19 DUPTABLE                         R2 K8 [{["success"] = False, ["errors"]}]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K1 ["errors"]
       24 RETURN                           R2 1
       25 JUMPIFNOT                        R1 ; [+18]
       26 LENGTH                           R2 R1
       27 JUMPIFEQKN                       R2 K9 [0] ; [+16]
       29 GETUPVAL                         R2 0
       30 LOADK                            R3 K4 ["Failed to grant permissions to assets: %*"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K10 ["pretty"]
       34 MOVE                             R6 R1
       35 CALL                             R5 1 1
       36 NAMECALL                         R3 R3 K5 ["format"]
       38 CALL                             R3 2 1
       39 CALL                             R2 1 0
       40 DUPTABLE                         R2 K8 [{["success"] = False, ["errors"]}]
       41 SETTABLEKS                       R1 R2 K1 ["errors"]
       43 RETURN                           R2 1
       44 DUPTABLE                         R2 K12 [{["success"] = True, ["errors"]}]
       45 NEWTABLE                         R3 0 0
       47 SETTABLEKS                       R3 R2 K1 ["errors"]
       49 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to grant permissions to assets: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 CALL                             R1 1 0
       11 DUPTABLE                         R1 K6 [{["success"] = False, ["errors"]}]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K5 ["errors"]
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["map"]
        3 MOVE                             R6 R0
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          VAL R4
        6 CALL                             R5 2 1
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K1 ["PatchAssetsPermissionsRequest"]
       10 MOVE                             R7 R5
       11 MOVE                             R8 R1
       12 MOVE                             R9 R2
       13 MOVE                             R10 R3
       14 CALL                             R6 4 1
       15 NAMECALL                         R6 R6 K2 ["makeRequest"]
       17 CALL                             R6 1 1
       18 DUPCLOSURE                       R8 K3 [PROTO_1]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U0
       21 DUPCLOSURE                       R9 K4 [PROTO_2]
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U0
       24 NAMECALL                         R6 R6 K5 ["andThen"]
       26 CALL                             R6 3 -1
       27 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Dash"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Enums"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Networking"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Networking"]
       37 GETTABLEKS                       R7 R7 K11 ["Urls"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Utils"]
       44 GETTABLEKS                       R8 R8 K13 ["logIfDebug"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K14 [PROTO_3]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 RETURN                           R8 1
