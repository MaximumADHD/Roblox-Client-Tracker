PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
       14 JUMPIFEQKNIL                     R0 ; [+10]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K1 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
       23 JUMPIFNOTEQKNIL                  R1 ; [+3]
       25 LOADB                            R2 0
       26 RETURN                           R2 1
       27 MOVE                             R2 R0
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETUPVAL                         R7 0
       32 GETTABLE                         R8 R1 R5
       33 MOVE                             R9 R6
       34 CALL                             R7 2 1
       35 JUMPIF                           R7 ; [+2]
       36 LOADB                            R7 0
       37 RETURN                           R7 1
       38 FORGLOOP                         R2 2 ; [-8]
       40 MOVE                             R2 R1
       41 LOADNIL                          R3
       42 LOADNIL                          R4
       43 FORGPREP                         R2
       44 GETUPVAL                         R7 0
       45 GETTABLE                         R8 R0 R5
       46 MOVE                             R9 R6
       47 CALL                             R7 2 1
       48 JUMPIF                           R7 ; [+2]
       49 LOADB                            R7 0
       50 RETURN                           R7 1
       51 FORGLOOP                         R2 2 ; [-8]
       53 LOADB                            R2 1
       54 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["objectIs"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
