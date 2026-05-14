PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R1 K1 ["selectItem"]
        6 GETTABLEKS                       R3 R3 K2 ["cagesTransparency"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 SETTABLE                         R4 R2 R3
       12 GETUPVAL                         R5 3
       13 MOVE                             R6 R2
       14 CALL                             R5 1 -1
       15 NAMECALL                         R3 R0 K3 ["dispatch"]
       17 CALL                             R3 -1 0
       18 RETURN                           R0 0

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
       15 GETTABLEKS                       R2 R2 K7 ["SetCagesTransparency"]
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
