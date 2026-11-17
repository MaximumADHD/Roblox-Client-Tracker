PROTO_0:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to delete folder: %*"]
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
        0 NEWTABLE                         R2 1 0
        2 SETTABLEKS                       R1 R2 K0 ["rbx-inventory-session-id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["CreateDeleteFolderRequest"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R2
        9 CALL                             R3 2 1
       10 NAMECALL                         R3 R3 K2 ["makeRequest"]
       12 CALL                             R3 1 1
       13 DUPCLOSURE                       R5 K3 [PROTO_0]
       14 DUPCLOSURE                       R6 K4 [PROTO_1]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 NAMECALL                         R3 R3 K5 ["andThen"]
       20 CALL                             R3 3 -1
       21 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Networking"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Networking"]
       25 GETTABLEKS                       R5 R5 K10 ["Shared"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K8 ["Networking"]
       37 GETTABLEKS                       R7 R7 K11 ["Urls"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Utils"]
       44 GETTABLEKS                       R8 R8 K13 ["logIfDebug"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K14 [PROTO_2]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 RETURN                           R8 1
