PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+5]
       18 LENGTH                           R2 R0
       19 LENGTH                           R3 R1
       20 JUMPIFEQ                         R2 R3 ; [+3]
       22 LOADB                            R2 0
       23 RETURN                           R2 1
       24 JUMPIFEQKNIL                     R0 ; [+3]
       26 JUMPIFNOTEQKNIL                  R1 ; [+3]
       28 LOADB                            R2 0
       29 RETURN                           R2 1
       30 MOVE                             R2 R0
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETTABLE                         R7 R1 R5
       35 JUMPIFEQ                         R7 R6 ; [+3]
       37 LOADB                            R7 0
       38 RETURN                           R7 1
       39 FORGLOOP                         R2 2 ; [-6]
       41 MOVE                             R2 R1
       42 LOADNIL                          R3
       43 LOADNIL                          R4
       44 FORGPREP                         R2
       45 GETTABLE                         R7 R0 R5
       46 JUMPIFEQ                         R7 R6 ; [+3]
       48 LOADB                            R7 0
       49 RETURN                           R7 1
       50 FORGLOOP                         R2 2 ; [-6]
       52 LOADB                            R2 1
       53 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
