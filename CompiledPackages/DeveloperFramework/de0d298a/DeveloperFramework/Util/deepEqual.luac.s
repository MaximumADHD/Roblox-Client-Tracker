PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQ                         R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K1 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+37]
       21 NEWTABLE                         R2 0 0
       23 GETIMPORT                        R3 K4 [pairs]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 3
       27 FORGPREP_NEXT                    R3
       28 LOADB                            R8 1
       29 SETTABLE                         R8 R2 R6
       30 GETUPVAL                         R8 0
       31 MOVE                             R9 R7
       32 GETTABLE                         R10 R1 R6
       33 CALL                             R8 2 1
       34 JUMPIF                           R8 ; [+2]
       35 LOADB                            R9 0
       36 RETURN                           R9 1
       37 FORGLOOP                         R3 2 ; [-10]
       39 GETIMPORT                        R3 K4 [pairs]
       41 MOVE                             R4 R1
       42 CALL                             R3 1 3
       43 FORGPREP_NEXT                    R3
       44 GETTABLE                         R8 R2 R6
       45 JUMPIF                           R8 ; [+7]
       46 GETUPVAL                         R8 0
       47 MOVE                             R9 R7
       48 GETTABLE                         R10 R0 R6
       49 CALL                             R8 2 1
       50 JUMPIF                           R8 ; [+2]
       51 LOADB                            R9 0
       52 RETURN                           R9 1
       53 FORGLOOP                         R3 2 ; [-10]
       55 LOADB                            R3 1
       56 RETURN                           R3 1
       57 JUMPIFNOTEQ                      R0 R1 ; [+3]
       59 LOADB                            R2 1
       60 RETURN                           R2 1
       61 LOADB                            R2 0
       62 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
