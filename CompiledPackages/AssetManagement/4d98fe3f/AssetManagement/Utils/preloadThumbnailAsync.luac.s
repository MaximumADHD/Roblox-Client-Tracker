PROTO_0:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K3 [Enum.AssetFetchStatus.None]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          REF R1
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K5 [pcall]
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+12]
       11 GETUPVAL                         R4 1
       12 LOADK                            R5 K6 ["preloadThumbnailAsync: failed to preload %*: %*"]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R3
       15 NAMECALL                         R5 R5 K7 ["format"]
       17 CALL                             R5 3 1
       18 CALL                             R4 1 0
       19 GETIMPORT                        R4 K9 [Enum.AssetFetchStatus.Failure]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R4 1
       23 CLOSEUPVALS                      R1
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Services"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Utils"]
       16 GETTABLEKS                       R3 R3 K8 ["logIfDebug"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["GetService"]
       21 LOADK                            R4 K10 ["ContentProvider"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K11 [PROTO_2]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
