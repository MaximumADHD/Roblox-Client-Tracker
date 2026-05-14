PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AssetsUploaded"]
        5 GETUPVAL                         R4 2
        6 NEWTABLE                         R6 0 1
        8 MOVE                             R7 R0
        9 SETLIST                          R6 R7 1 [1]
       11 NAMECALL                         R4 R4 K1 ["JSONEncode"]
       13 CALL                             R4 2 -1
       14 NAMECALL                         R1 R1 K2 ["Fire"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Toolbox"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["SharedFlags"]
       27 GETTABLEKS                       R4 R4 K14 ["getFFlagAssetConfigReportNewAssetId"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K15 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 RETURN                           R4 1
