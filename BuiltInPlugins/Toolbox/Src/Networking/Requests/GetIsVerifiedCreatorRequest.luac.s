PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R5 R1 K1 ["isVerifiedCreator"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R2 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

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
        1 NAMECALL                         R1 R1 K0 ["getIsVerifiedCreator"]
        3 CALL                             R1 1 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R1 R1 K1 ["andThen"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Actions"]
       17 GETTABLEKS                       R2 R2 K7 ["SetIsVerifiedCreator"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Actions"]
       26 GETTABLEKS                       R3 R3 K8 ["NetworkError"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K9 [PROTO_3]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 RETURN                           R3 1
