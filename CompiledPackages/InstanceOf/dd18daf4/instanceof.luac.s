PROTO_0:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 JUMPIFEQKNIL                     R1 ; [+11]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["new"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["new"]
       12 JUMPIFEQ                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+15]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Received a non-table as the second argument for instanceof"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 FASTCALL1                        TYPEOF R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K1 [typeof]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K2 ["table"] ; [+4]
       24 LOADB                            R2 0
       25 CLOSEUPVALS                      R0
       26 RETURN                           R2 1
       27 GETIMPORT                        R2 K7 [pcall]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          REF R0
       32 CALL                             R2 1 2
       33 JUMPIFNOT                        R2 ; [+4]
       34 JUMPIFNOT                        R3 ; [+3]
       35 LOADB                            R4 1
       36 CLOSEUPVALS                      R0
       37 RETURN                           R4 1
       38 NEWTABLE                         R4 1 0
       40 LOADB                            R5 1
       41 SETTABLE                         R5 R4 R0
       42 JUMPIFNOT                        R0 ; [+42]
       43 FASTCALL1                        TYPEOF R0 ; [+3]
       44 MOVE                             R6 R0
       45 GETIMPORT                        R5 K1 [typeof]
       47 CALL                             R5 1 1
       48 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+36]
       50 FASTCALL1                        GETMETATABLE R0 ; [+3]
       51 MOVE                             R6 R0
       52 GETIMPORT                        R5 K9 [getmetatable]
       54 CALL                             R5 1 1
       55 MOVE                             R0 R5
       56 FASTCALL1                        TYPEOF R0 ; [+3]
       57 MOVE                             R6 R0
       58 GETIMPORT                        R5 K1 [typeof]
       60 CALL                             R5 1 1
       61 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+8]
       63 GETTABLEKS                       R0 R0 K10 ["__index"]
       65 JUMPIFNOTEQ                      R0 R1 ; [+4]
       67 LOADB                            R5 1
       68 CLOSEUPVALS                      R0
       69 RETURN                           R5 1
       70 FASTCALL1                        TYPEOF R0 ; [+3]
       71 MOVE                             R6 R0
       72 GETIMPORT                        R5 K1 [typeof]
       74 CALL                             R5 1 1
       75 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+8]
       77 GETTABLE                         R5 R4 R0
       78 JUMPIFNOT                        R5 ; [+3]
       79 LOADB                            R5 0
       80 CLOSEUPVALS                      R0
       81 RETURN                           R5 1
       82 LOADB                            R5 1
       83 SETTABLE                         R5 R4 R0
       84 JUMPBACK                         ; [-43]
       85 LOADB                            R5 0
       86 CLOSEUPVALS                      R0
       87 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 DUPCLOSURE                       R1 K3 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
