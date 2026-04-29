PROTO_0:
        0 LOADNIL                          R2
        1 GETUPVAL                         R4 0
        2 FASTCALL1                        TYPEOF R4 ; [+2]
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+7]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 MOVE                             R5 R0
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 JUMP                             ; [+2]
       14 GETUPVAL                         R3 0
       15 GETTABLE                         R2 R1 R3
       16 MOVE                             R3 R2
       17 MOVE                             R4 R1
       18 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["collect"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
