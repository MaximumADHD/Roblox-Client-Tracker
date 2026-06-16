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
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+15]
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K4 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFEQKS                       R4 K5 ["table"] ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       16 LOADK                            R4 K6 ["Received a non-table as the second argument for instanceof"]
       17 GETIMPORT                        R2 K8 [assert]
       19 CALL                             R2 2 0
       20 FASTCALL1                        TYPEOF R0 ; [+3]
       21 MOVE                             R3 R0
       22 GETIMPORT                        R2 K4 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFEQKS                       R2 K5 ["table"] ; [+4]
       27 LOADB                            R2 0
       28 CLOSEUPVALS                      R0
       29 RETURN                           R2 1
       30 GETIMPORT                        R2 K10 [pcall]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          REF R0
       35 CALL                             R2 1 2
       36 JUMPIFNOT                        R2 ; [+4]
       37 JUMPIFNOT                        R3 ; [+3]
       38 LOADB                            R4 1
       39 CLOSEUPVALS                      R0
       40 RETURN                           R4 1
       41 DUPTABLE                         R4 K12 [{"tbl"}]
       42 LOADB                            R5 1
       43 SETTABLEKS                       R5 R4 K11 ["tbl"]
       45 JUMPIFNOT                        R0 ; [+42]
       46 FASTCALL1                        TYPEOF R0 ; [+3]
       47 MOVE                             R6 R0
       48 GETIMPORT                        R5 K4 [typeof]
       50 CALL                             R5 1 1
       51 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+36]
       53 FASTCALL1                        GETMETATABLE R0 ; [+3]
       54 MOVE                             R6 R0
       55 GETIMPORT                        R5 K14 [getmetatable]
       57 CALL                             R5 1 1
       58 MOVE                             R0 R5
       59 FASTCALL1                        TYPEOF R0 ; [+3]
       60 MOVE                             R6 R0
       61 GETIMPORT                        R5 K4 [typeof]
       63 CALL                             R5 1 1
       64 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+8]
       66 GETTABLEKS                       R0 R0 K15 ["__index"]
       68 JUMPIFNOTEQ                      R0 R1 ; [+4]
       70 LOADB                            R5 1
       71 CLOSEUPVALS                      R0
       72 RETURN                           R5 1
       73 FASTCALL1                        TYPEOF R0 ; [+3]
       74 MOVE                             R6 R0
       75 GETIMPORT                        R5 K4 [typeof]
       77 CALL                             R5 1 1
       78 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+8]
       80 GETTABLE                         R5 R4 R0
       81 JUMPIFNOT                        R5 ; [+3]
       82 LOADB                            R5 0
       83 CLOSEUPVALS                      R0
       84 RETURN                           R5 1
       85 LOADB                            R5 1
       86 SETTABLE                         R5 R4 R0
       87 JUMPBACK                         ; [-43]
       88 LOADB                            R5 0
       89 CLOSEUPVALS                      R0
       90 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
