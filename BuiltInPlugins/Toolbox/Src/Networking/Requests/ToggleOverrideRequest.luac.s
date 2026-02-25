PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["isOverride"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 0
        8 NAMECALL                         R4 R4 K1 ["getGeneralTab"]
       10 CALL                             R4 1 -1
       11 CALL                             R3 -1 -1
       12 NAMECALL                         R1 R0 K2 ["dispatch"]
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R4 R5 K3 ["OVERRIDE_ASSET_ID"]
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R0 K2 ["dispatch"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R3 2
       25 GETUPVAL                         R4 0
       26 NAMECALL                         R4 R4 K4 ["getOverrideTab"]
       28 CALL                             R4 1 -1
       29 CALL                             R3 -1 -1
       30 NAMECALL                         R1 R0 K2 ["dispatch"]
       32 CALL                             R1 -1 0
       33 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["SetAssetConfigTab"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["ClearChange"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K3 ["Src"]
       29 GETTABLEKS                       R6 R7 K9 ["Types"]
       31 GETTABLEKS                       R5 R6 K10 ["ConfigTypes"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R6 R0 K3 ["Src"]
       36 GETTABLEKS                       R5 R6 K11 ["Util"]
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R7 R5 K12 ["AssetConfigConstants"]
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K13 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 RETURN                           R7 1
