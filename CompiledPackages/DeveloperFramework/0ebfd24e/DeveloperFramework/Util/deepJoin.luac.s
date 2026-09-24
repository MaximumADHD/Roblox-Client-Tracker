PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 FASTCALL1                        TYPEOF R7 ; [+3]
        8 MOVE                             R9 R7
        9 GETIMPORT                        R8 K3 [typeof]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+23]
       14 GETTABLE                         R8 R1 R6
       15 JUMPIFNOT                        R8 ; [+13]
       16 GETTABLE                         R9 R1 R6
       17 FASTCALL1                        TYPEOF R9 ; [+2]
       18 GETIMPORT                        R8 K3 [typeof]
       20 CALL                             R8 1 1
       21 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+7]
       23 GETUPVAL                         R8 0
       24 MOVE                             R9 R7
       25 GETTABLE                         R10 R1 R6
       26 CALL                             R8 2 1
       27 SETTABLE                         R8 R2 R6
       28 JUMP                             ; [+8]
       29 GETUPVAL                         R8 0
       30 MOVE                             R9 R7
       31 NEWTABLE                         R10 0 0
       33 CALL                             R8 2 1
       34 SETTABLE                         R8 R2 R6
       35 JUMP                             ; [+1]
       36 SETTABLE                         R7 R2 R6
       37 FORGLOOP                         R3 2 ; [-31]
       39 GETIMPORT                        R3 K1 [pairs]
       41 MOVE                             R4 R1
       42 CALL                             R3 1 3
       43 FORGPREP_NEXT                    R3
       44 FASTCALL1                        TYPEOF R7 ; [+3]
       45 MOVE                             R9 R7
       46 GETIMPORT                        R8 K3 [typeof]
       48 CALL                             R8 1 1
       49 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+10]
       51 GETTABLE                         R8 R0 R6
       52 JUMPIF                           R8 ; [+8]
       53 GETUPVAL                         R8 0
       54 MOVE                             R9 R7
       55 NEWTABLE                         R10 0 0
       57 CALL                             R8 2 1
       58 SETTABLE                         R8 R2 R6
       59 JUMP                             ; [+1]
       60 SETTABLE                         R7 R2 R6
       61 FORGLOOP                         R3 2 ; [-18]
       63 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
