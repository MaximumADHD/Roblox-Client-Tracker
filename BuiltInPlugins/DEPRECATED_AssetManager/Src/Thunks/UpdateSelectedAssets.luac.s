PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R2 R3 K2 ["selectedAssets"]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+6]
       12 GETUPVAL                         R5 2
       13 GETUPVAL                         R6 1
       14 CALL                             R5 1 -1
       15 NAMECALL                         R3 R0 K3 ["dispatch"]
       17 CALL                             R3 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Dash"]
       18 GETTABLEKS                       R3 R2 K8 ["shallowEqual"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["Src"]
       24 GETTABLEKS                       R6 R7 K10 ["Actions"]
       26 GETTABLEKS                       R5 R6 K11 ["SetSelectedAssets"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K12 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 RETURN                           R5 1
