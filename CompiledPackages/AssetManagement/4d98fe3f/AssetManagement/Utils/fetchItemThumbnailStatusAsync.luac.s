PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 1
        6 GETIMPORT                        R1 K3 [Enum.AssetFetchStatus.Success]
        8 JUMPIFEQ                         R0 R1 ; [+8]
       10 GETUPVAL                         R1 4
       11 LOADK                            R2 K4 ["fetchItemThumbnailStatusAsync: failed to fetch thumbnail for item %*"]
       12 GETUPVAL                         R4 2
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 2 1
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 5
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [task.spawn]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

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
       14 GETTABLEKS                       R3 R0 K7 ["Utils"]
       16 GETTABLEKS                       R3 R3 K8 ["getItemThumbnailUri"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Utils"]
       23 GETTABLEKS                       R4 R4 K9 ["logIfDebug"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Utils"]
       30 GETTABLEKS                       R5 R5 K10 ["preloadThumbnailAsync"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K11 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 RETURN                           R5 1
