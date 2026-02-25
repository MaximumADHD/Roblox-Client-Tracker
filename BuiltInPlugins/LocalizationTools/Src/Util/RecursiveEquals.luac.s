PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [type]
        9 CALL                             R3 1 1
       10 JUMPIFEQ                         R2 R3 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 FASTCALL1                        TYPE R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K1 [type]
       18 CALL                             R2 1 1
       19 JUMPIFEQKS                       R2 K2 ["table"] ; [+6]
       21 JUMPIFEQ                         R0 R1 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 GETIMPORT                        R2 K4 [pairs]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 3
       30 FORGPREP_NEXT                    R2
       31 GETUPVAL                         R7 0
       32 MOVE                             R8 R6
       33 GETTABLE                         R9 R1 R5
       34 CALL                             R7 2 1
       35 JUMPIF                           R7 ; [+2]
       36 LOADB                            R7 0
       37 RETURN                           R7 1
       38 FORGLOOP                         R2 2 ; [-8]
       40 GETIMPORT                        R2 K4 [pairs]
       42 MOVE                             R3 R1
       43 CALL                             R2 1 3
       44 FORGPREP_NEXT                    R2
       45 GETUPVAL                         R7 0
       46 MOVE                             R8 R6
       47 GETTABLE                         R9 R0 R5
       48 CALL                             R7 2 1
       49 JUMPIF                           R7 ; [+2]
       50 LOADB                            R7 0
       51 RETURN                           R7 1
       52 FORGLOOP                         R2 2 ; [-8]
       54 LOADB                            R2 1
       55 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
