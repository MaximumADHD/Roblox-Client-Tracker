PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["previewStatus"]
        5 GETTABLEKS                       R2 R2 K2 ["userAddedAssets"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R3 R5
       12 JUMPIFNOT                        R4 ; [+16]
       13 GETUPVAL                         R6 1
       14 GETTABLE                         R5 R3 R6
       15 GETUPVAL                         R6 2
       16 GETTABLE                         R4 R5 R6
       17 JUMPIFNOT                        R4 ; [+11]
       18 GETUPVAL                         R5 1
       19 GETTABLE                         R4 R3 R5
       20 GETUPVAL                         R5 2
       21 LOADNIL                          R6
       22 SETTABLE                         R6 R4 R5
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R3
       25 CALL                             R6 1 -1
       26 NAMECALL                         R4 R0 K3 ["dispatch"]
       28 CALL                             R4 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetUserAddedAssets"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K10 ["Util"]
       27 GETTABLEKS                       R3 R3 K11 ["deepCopy"]
       29 DUPCLOSURE                       R4 K12 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
