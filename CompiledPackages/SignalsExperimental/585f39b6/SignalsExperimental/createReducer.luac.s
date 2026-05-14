PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+14]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R2 2
        5 FASTCALL1                        TYPEOF R2 ; [+2]
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+4]
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMP                             ; [+1]
       14 GETUPVAL                         R0 2
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+14]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R3 2
        5 FASTCALL1                        TYPEOF R3 ; [+2]
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+4]
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 JUMP                             ; [+1]
       14 GETUPVAL                         R1 2
       15 SETUPVAL                         R1 1
       16 GETUPVAL                         R1 3
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 1
       19 CALL                             R1 2 1
       20 SETUPVAL                         R1 1
       21 GETUPVAL                         R1 1
       22 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R2 0
        1 LOADNIL                          R3
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          REF R2
        4 CAPTURE                          REF R3
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R5 0
        7 NEWCLOSURE                       R6 P1
        8 CAPTURE                          REF R2
        9 CAPTURE                          REF R3
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 CALL                             R5 1 -1
       13 CLOSEUPVALS                      R2
       14 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Signals"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["createComputed"]
       14 DUPCLOSURE                       R3 K7 [PROTO_2]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
