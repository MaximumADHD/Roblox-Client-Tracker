PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R3 1
        3 RETURN                           R3 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [type]
        8 CALL                             R3 1 1
        9 FASTCALL1                        TYPE R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K1 [type]
       13 CALL                             R4 1 1
       14 JUMPIFEQ                         R3 R4 ; [+3]
       16 LOADB                            R5 0
       17 RETURN                           R5 1
       18 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
       20 LOADB                            R5 0
       21 RETURN                           R5 1
       22 JUMPIF                           R2 ; [+14]
       23 FASTCALL1                        GETMETATABLE R0 ; [+3]
       24 MOVE                             R6 R0
       25 GETIMPORT                        R5 K4 [getmetatable]
       27 CALL                             R5 1 1
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETTABLEKS                       R6 R5 K5 ["__eq"]
       31 JUMPIFNOT                        R6 ; [+5]
       32 JUMPIFEQ                         R0 R1 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 RETURN                           R6 1
       37 NEWTABLE                         R5 0 0
       39 GETIMPORT                        R6 K7 [pairs]
       41 MOVE                             R7 R0
       42 CALL                             R6 1 3
       43 FORGPREP_NEXT                    R6
       44 GETTABLE                         R11 R1 R9
       45 JUMPIFEQKNIL                     R11 ; [+7]
       47 GETUPVAL                         R12 0
       48 MOVE                             R13 R10
       49 MOVE                             R14 R11
       50 MOVE                             R15 R2
       51 CALL                             R12 3 1
       52 JUMPIF                           R12 ; [+2]
       53 LOADB                            R12 0
       54 RETURN                           R12 1
       55 LOADB                            R12 1
       56 SETTABLE                         R12 R5 R9
       57 FORGLOOP                         R6 2 ; [-14]
       59 GETIMPORT                        R6 K7 [pairs]
       61 MOVE                             R7 R1
       62 CALL                             R6 1 3
       63 FORGPREP_NEXT                    R6
       64 GETTABLE                         R11 R5 R9
       65 JUMPIF                           R11 ; [+2]
       66 LOADB                            R11 0
       67 RETURN                           R11 1
       68 FORGLOOP                         R6 2 ; [-5]
       70 LOADB                            R6 1
       71 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
