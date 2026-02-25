PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNameFromResult"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K4 [{"Id", "Name", "Type"}]
        9 GETUPVAL                         R6 4
       10 SETTABLEKS                       R6 R5 K1 ["Id"]
       12 SETTABLEKS                       R1 R5 K2 ["Name"]
       14 GETUPVAL                         R6 1
       15 SETTABLEKS                       R6 R5 K3 ["Type"]
       17 CALL                             R4 1 -1
       18 NAMECALL                         R2 R2 K5 ["dispatch"]
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 NAMECALL                         R1 R1 K0 ["getCreatorInfo"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U1
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U5
       15 NAMECALL                         R1 R1 K1 ["andThen"]
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

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
       17 GETTABLEKS                       R3 R1 K7 ["NetworkError"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["SetCachedCreatorInfo"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R0 K3 ["Src"]
       27 GETTABLEKS                       R4 R5 K9 ["Util"]
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R4 K10 ["CreatorInfoHelper"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K11 [PROTO_3]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
