PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+34]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+27]
       14 MOVE                             R2 R0
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETUPVAL                         R7 0
       19 MOVE                             R8 R6
       20 GETTABLE                         R9 R1 R5
       21 CALL                             R7 2 1
       22 JUMPIF                           R7 ; [+2]
       23 LOADB                            R7 0
       24 RETURN                           R7 1
       25 FORGLOOP                         R2 2 ; [-8]
       27 MOVE                             R2 R1
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETTABLE                         R7 R0 R5
       32 JUMPIFNOTEQKNIL                  R7 ; [+3]
       34 LOADB                            R7 0
       35 RETURN                           R7 1
       36 FORGLOOP                         R2 1 ; [-6]
       38 LOADB                            R2 1
       39 RETURN                           R2 1
       40 JUMPIFEQ                         R0 R1 ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
