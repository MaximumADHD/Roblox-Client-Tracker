PROTO_0:
        0 MOVE                             R4 R1
        1 MOVE                             R5 R0
        2 MOVE                             R6 R3
        3 CALL                             R4 2 0
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R4 R0 K0 ["children"]
       11 JUMPIF                           R4 ; [+2]
       12 NEWTABLE                         R4 0 0
       14 GETIMPORT                        R5 K2 [pairs]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 3
       18 FORGPREP_NEXT                    R5
       19 GETUPVAL                         R10 0
       20 MOVE                             R11 R9
       21 MOVE                             R12 R1
       22 MOVE                             R13 R2
       23 ADDK                             R14 R3 K3 [1]
       24 CALL                             R10 4 0
       25 FORGLOOP                         R5 2 ; [-7]
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 LOADN                            R7 1
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
