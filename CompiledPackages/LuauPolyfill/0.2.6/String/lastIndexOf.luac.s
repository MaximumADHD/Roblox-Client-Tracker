PROTO_0:
        0 FASTCALL1                        STRING_LEN R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K2 [string.len]
        4 CALL                             R3 1 1
        5 MOVE                             R4 R2
        6 JUMPIF                           R2 ; [+1]
        7 MOVE                             R4 R3
        8 JUMPIFNOT                        R2 ; [+4]
        9 LOADN                            R5 1
       10 JUMPIFNOTLT                      R2 R5 ; [+2]
       12 LOADN                            R4 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 JUMPIFNOTLT                      R3 R2 ; [+2]
       16 MOVE                             R4 R3
       17 JUMPIFNOTEQKS                    R1 K3 [""] ; [+2]
       19 RETURN                           R4 1
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 LOADN                            R7 0
       23 MOVE                             R5 R6
       24 GETIMPORT                        R8 K5 [string.find]
       26 MOVE                             R9 R0
       27 MOVE                             R10 R1
       28 ADDK                             R11 R7 K6 [1]
       29 LOADB                            R12 1
       30 CALL                             R8 4 2
       31 MOVE                             R6 R8
       32 MOVE                             R7 R9
       33 JUMPIFEQKNIL                     R6 ; [+4]
       35 JUMPIFLT                         R4 R6 ; [+2]
       37 JUMPBACK                         ; [-15]
       38 JUMPIFNOTEQKNIL                  R5 ; [+3]
       40 LOADN                            R8 255
       41 RETURN                           R8 1
       42 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
