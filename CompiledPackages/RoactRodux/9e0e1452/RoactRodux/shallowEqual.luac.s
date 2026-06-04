PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+6]
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+6]
        9 JUMPIFEQKNIL                     R0 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 GETIMPORT                        R2 K1 [pairs]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 GETTABLE                         R7 R1 R5
       20 JUMPIFEQ                         R6 R7 ; [+3]
       22 LOADB                            R7 0
       23 RETURN                           R7 1
       24 FORGLOOP                         R2 2 ; [-6]
       26 GETIMPORT                        R2 K1 [pairs]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 3
       30 FORGPREP_NEXT                    R2
       31 GETTABLE                         R7 R0 R5
       32 JUMPIFEQ                         R6 R7 ; [+3]
       34 LOADB                            R7 0
       35 RETURN                           R7 1
       36 FORGLOOP                         R2 2 ; [-6]
       38 LOADB                            R2 1
       39 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
