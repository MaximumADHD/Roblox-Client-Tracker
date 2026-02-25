PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Players"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R0 R0 K4 ["GetNameFromUserIdAsync"]
        9 CALL                             R0 2 1
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 CALL                             R3 1 -1
       15 NAMECALL                         R1 R1 K5 ["dispatch"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Actions"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["SetOwnerUsername"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R6 R0 K3 ["Src"]
       22 GETTABLEKS                       R5 R6 K8 ["Util"]
       24 GETTABLEKS                       R4 R5 K9 ["getUserId"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K10 [PROTO_2]
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
