PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetService"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Utils"]
        9 GETTABLEKS                       R2 R2 K6 ["isCli"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K5 ["Utils"]
       16 GETTABLEKS                       R3 R3 K7 ["isFtf"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 1 0
       21 NEWTABLE                         R4 0 0
       23 MOVE                             R5 R1
       24 CALL                             R5 0 1
       25 JUMPIF                           R5 ; [+3]
       26 MOVE                             R5 R2
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+5]
       29 DUPCLOSURE                       R5 K8 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R5 R3 K9 ["GetService"]
       33 RETURN                           R3 1
       34 DUPCLOSURE                       R5 K10 [PROTO_1]
       35 SETTABLEKS                       R5 R3 K9 ["GetService"]
       37 RETURN                           R3 1
