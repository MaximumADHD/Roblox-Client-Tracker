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
       27 GETIMPORT                        R2 K4 [pairs]
       29 MOVE                             R3 R0
       30 CALL                             R2 1 3
       31 FORGPREP_NEXT                    R2
       32 GETUPVAL                         R7 0
       33 GETTABLE                         R8 R1 R5
       34 MOVE                             R9 R6
       35 CALL                             R7 2 1
       36 JUMPIF                           R7 ; [+2]
       37 LOADB                            R7 0
       38 RETURN                           R7 1
       39 FORGLOOP                         R2 2 ; [-8]
       41 GETIMPORT                        R2 K4 [pairs]
       43 MOVE                             R3 R1
       44 CALL                             R2 1 3
       45 FORGPREP_NEXT                    R2
       46 GETUPVAL                         R7 0
       47 GETTABLE                         R8 R0 R5
       48 MOVE                             R9 R6
       49 CALL                             R7 2 1
       50 JUMPIF                           R7 ; [+2]
       51 LOADB                            R7 0
       52 RETURN                           R7 1
       53 FORGLOOP                         R2 2 ; [-8]
       55 LOADB                            R2 1
       56 RETURN                           R2 1

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
