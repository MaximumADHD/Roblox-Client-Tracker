PROTO_0:
        0 FASTCALL1                        STRING_LEN R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K2 [string.len]
        4 CALL                             R3 1 1
        5 LOADNIL                          R4
        6 JUMPIFNOT                        R2 ; [+2]
        7 MOVE                             R4 R2
        8 JUMP                             ; [+1]
        9 MOVE                             R4 R3
       10 JUMPIFNOT                        R2 ; [+4]
       11 LOADN                            R5 1
       12 JUMPIFNOTLT                      R2 R5 ; [+2]
       14 LOADN                            R4 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 JUMPIFNOTLT                      R3 R2 ; [+2]
       18 MOVE                             R4 R3
       19 JUMPIFNOTEQKS                    R1 K3 [""] ; [+2]
       21 RETURN                           R4 1
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 LOADN                            R7 0
       25 MOVE                             R5 R6
       26 GETIMPORT                        R8 K5 [string.find]
       28 MOVE                             R9 R0
       29 MOVE                             R10 R1
       30 ADDK                             R11 R7 K6 [1]
       31 LOADB                            R12 1
       32 CALL                             R8 4 2
       33 MOVE                             R6 R8
       34 MOVE                             R7 R9
       35 JUMPIFEQKNIL                     R6 ; [+4]
       37 JUMPIFLT                         R4 R6 ; [+2]
       39 JUMPBACK                         ; [-15]
       40 JUMPIFNOTEQKNIL                  R5 ; [+3]
       42 LOADN                            R8 -1
       43 RETURN                           R8 1
       44 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
