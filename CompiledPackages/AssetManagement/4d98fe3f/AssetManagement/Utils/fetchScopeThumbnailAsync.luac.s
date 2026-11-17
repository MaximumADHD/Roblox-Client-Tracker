PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K3 [Enum.AssetFetchStatus.Success]
        8 JUMPIFEQ                         R3 R4 ; [+13]
       10 GETUPVAL                         R3 2
       11 LOADK                            R4 K4 ["fetchScopeThumbnailAsync: failed to fetch thumbnail for scope %*"]
       12 GETTABLEKS                       R6 R0 K5 ["Uid"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 1
       17 CALL                             R3 1 0
       18 MOVE                             R3 R1
       19 LOADK                            R4 K7 [""]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 MOVE                             R3 R1
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Utils"]
       16 GETTABLEKS                       R3 R3 K8 ["getScopeThumbnailUri"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Utils"]
       23 GETTABLEKS                       R4 R4 K9 ["logIfDebug"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Utils"]
       30 GETTABLEKS                       R5 R5 K10 ["preloadThumbnailAsync"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K11 [PROTO_0]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 RETURN                           R5 1
