PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R6 R2 K2 ["roles"]
       11 CALL                             R5 1 -1
       12 NAMECALL                         R3 R3 K3 ["dispatch"]
       14 CALL                             R3 -1 0
       15 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getGroupRoleInfo"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 DUPCLOSURE                       R4 K1 [PROTO_1]
       10 NAMECALL                         R1 R1 K2 ["andThen"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETTABLEKS                       R3 R1 K7 ["Src"]
       17 GETTABLEKS                       R2 R3 K8 ["Actions"]
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["SetGroupRoleInfo"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K12 [PROTO_3]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
