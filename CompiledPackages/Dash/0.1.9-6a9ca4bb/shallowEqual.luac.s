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
       30 GETIMPORT                        R2 K4 [pairs]
       32 MOVE                             R3 R0
       33 CALL                             R2 1 3
       34 FORGPREP_NEXT                    R2
       35 GETTABLE                         R7 R1 R5
       36 JUMPIFEQ                         R7 R6 ; [+3]
       38 LOADB                            R7 0
       39 RETURN                           R7 1
       40 FORGLOOP                         R2 2 ; [-6]
       42 GETIMPORT                        R2 K4 [pairs]
       44 MOVE                             R3 R1
       45 CALL                             R2 1 3
       46 FORGPREP_NEXT                    R2
       47 GETTABLE                         R7 R0 R5
       48 JUMPIFEQ                         R7 R6 ; [+3]
       50 LOADB                            R7 0
       51 RETURN                           R7 1
       52 FORGLOOP                         R2 2 ; [-6]
       54 LOADB                            R2 1
       55 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
