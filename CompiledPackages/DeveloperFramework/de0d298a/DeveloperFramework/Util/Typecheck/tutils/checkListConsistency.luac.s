PROTO_0:
        0 LOADB                            R1 0
        1 LOADB                            R2 0
        2 LOADB                            R3 1
        3 LOADN                            R4 1
        4 GETIMPORT                        R5 K1 [pairs]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 3
        8 FORGPREP_NEXT                    R5
        9 FASTCALL1                        TYPE R8 ; [+3]
       10 MOVE                             R11 R8
       11 GETIMPORT                        R10 K3 [type]
       13 CALL                             R10 1 1
       14 JUMPIFNOTEQKS                    R10 K4 ["string"] ; [+3]
       16 LOADB                            R2 1
       17 JUMP                             ; [+14]
       18 FASTCALL1                        TYPE R8 ; [+3]
       19 MOVE                             R11 R8
       20 GETIMPORT                        R10 K3 [type]
       22 CALL                             R10 1 1
       23 JUMPIFNOTEQKS                    R10 K5 ["number"] ; [+6]
       25 JUMPIFEQ                         R4 R8 ; [+2]
       27 LOADB                            R3 0
       28 LOADB                            R1 1
       29 JUMP                             ; [+2]
       30 LOADB                            R10 0
       31 RETURN                           R10 1
       32 JUMPIFNOT                        R2 ; [+3]
       33 JUMPIFNOT                        R1 ; [+2]
       34 LOADB                            R10 0
       35 RETURN                           R10 1
       36 ADDK                             R4 R4 K6 [1]
       37 FORGLOOP                         R5 2 ; [-29]
       39 JUMPIFNOT                        R1 ; [+1]
       40 RETURN                           R3 1
       41 LOADB                            R5 1
       42 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
