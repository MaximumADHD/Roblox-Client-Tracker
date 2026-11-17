PROTO_0:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+6]
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 GETIMPORT                        R3 K1 [next]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 JUMPIFEQKNIL                     R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 GETIMPORT                        R4 K1 [next]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 1
       21 JUMPIFEQKNIL                     R4 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 JUMPIFEQ                         R2 R3 ; [+3]
       27 LOADB                            R2 0
       28 RETURN                           R2 1
       29 LOADB                            R2 1
       30 GETIMPORT                        R3 K3 [pairs]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 3
       34 FORGPREP_NEXT                    R3
       35 GETTABLE                         R8 R1 R6
       36 JUMPIFEQ                         R8 R7 ; [+3]
       38 LOADB                            R2 0
       39 JUMP                             ; [+2]
       40 FORGLOOP                         R3 2 ; [-6]
       42 GETIMPORT                        R3 K3 [pairs]
       44 MOVE                             R4 R1
       45 CALL                             R3 1 3
       46 FORGPREP_NEXT                    R3
       47 GETTABLE                         R8 R0 R6
       48 JUMPIFEQ                         R8 R7 ; [+3]
       50 LOADB                            R2 0
       51 RETURN                           R2 1
       52 FORGLOOP                         R3 2 ; [-6]
       54 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
