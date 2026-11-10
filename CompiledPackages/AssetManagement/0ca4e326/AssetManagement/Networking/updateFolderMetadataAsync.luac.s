PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to update folder metadata: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["reject"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R3 1 0
        2 SETTABLEKS                       R2 R3 K0 ["rbx-inventory-session-id"]
        4 DUPTABLE                         R4 K2 [{"folderItem"}]
        5 DUPTABLE                         R5 K4 [{"folder"}]
        6 DUPTABLE                         R6 K6 [{"displayName"}]
        7 SETTABLEKS                       R1 R6 K5 ["displayName"]
        9 SETTABLEKS                       R6 R5 K3 ["folder"]
       11 SETTABLEKS                       R5 R4 K1 ["folderItem"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K7 ["CreateFolderMetadataRequest"]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R4
       18 MOVE                             R8 R3
       19 CALL                             R5 3 1
       20 NAMECALL                         R5 R5 K8 ["makeRequest"]
       22 CALL                             R5 1 1
       23 DUPCLOSURE                       R7 K9 [PROTO_0]
       24 DUPCLOSURE                       R8 K10 [PROTO_1]
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 NAMECALL                         R5 R5 K11 ["andThen"]
       30 CALL                             R5 3 -1
       31 RETURN                           R5 -1

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
       18 GETTABLEKS                       R4 R0 K8 ["Networking"]
       20 GETTABLEKS                       R4 R4 K9 ["Types"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Networking"]
       27 GETTABLEKS                       R5 R5 K10 ["Shared"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Networking"]
       39 GETTABLEKS                       R7 R7 K11 ["Urls"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Utils"]
       46 GETTABLEKS                       R8 R8 K13 ["logIfDebug"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K14 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 RETURN                           R8 1
