PROTO_0:
        0 DUPTABLE                         R3 K3 [{"name", "message", "tags"}]
        1 SETTABLEKS                       R0 R3 K0 ["name"]
        3 ORK                              R4 R1 K4 ["An error occurred"]
        4 SETTABLEKS                       R4 R3 K1 ["message"]
        6 MOVE                             R4 R2
        7 JUMPIF                           R4 ; [+2]
        8 NEWTABLE                         R4 0 0
       10 SETTABLEKS                       R4 R3 K2 ["tags"]
       12 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["{}: {}\n{}"]
        2 GETTABLEKS                       R3 R0 K1 ["name"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R0 K2 ["message"]
        7 GETTABLEKS                       R6 R0 K3 ["tags"]
        9 CALL                             R4 2 1
       10 GETTABLEKS                       R5 R0 K4 ["stack"]
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R0 K1 ["name"]
        5 GETTABLEKS                       R4 R0 K2 ["message"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R6 R0 K3 ["tags"]
       10 MOVE                             R7 R1
       11 CALL                             R5 2 -1
       12 CALL                             R2 -1 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["joinTags"]
        3 CALL                             R2 2 1
        4 GETIMPORT                        R3 K3 [debug.traceback]
        6 CALL                             R3 0 1
        7 SETTABLEKS                       R3 R2 K4 ["stack"]
        9 GETIMPORT                        R3 K6 [error]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["class"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["format"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["join"]
       24 CALL                             R4 1 1
       25 MOVE                             R5 R2
       26 LOADK                            R6 K9 ["Error"]
       27 DUPCLOSURE                       R7 K10 [PROTO_0]
       28 CALL                             R5 2 1
       29 DUPCLOSURE                       R6 K11 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R6 R5 K12 ["toString"]
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R6 R5 K14 ["joinTags"]
       38 DUPCLOSURE                       R6 K15 [PROTO_3]
       39 SETTABLEKS                       R6 R5 K16 ["throw"]
       41 RETURN                           R5 1
