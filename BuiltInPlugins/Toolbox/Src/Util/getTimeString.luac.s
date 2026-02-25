PROTO_0:
        0 DIVK                             R3 R0 K0 [60]
        1 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.floor]
        4 CALL                             R2 1 1
        5 MODK                             R4 R0 K0 [60]
        6 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        7 GETIMPORT                        R3 K3 [math.floor]
        9 CALL                             R3 1 1
       10 JUMPIFEQKNIL                     R1 ; [+11]
       12 JUMPIFNOTEQKN                    R3 K4 [0] ; [+9]
       14 FASTCALL2                        MATH_MAX R3 R1 ; [+5]
       16 MOVE                             R5 R3
       17 MOVE                             R6 R1
       18 GETIMPORT                        R4 K6 [math.max]
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 GETIMPORT                        R4 K9 [string.format]
       24 LOADK                            R5 K10 ["%d:%02d"]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R3
       27 CALL                             R4 3 -1
       28 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
