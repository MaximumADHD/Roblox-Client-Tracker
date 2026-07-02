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
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Received a non-table as the second argument for instanceof"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K1 [typeof]
       19 CALL                             R2 1 1
       20 JUMPIFEQKS                       R2 K2 ["table"] ; [+4]
       22 LOADB                            R2 0
       23 CLOSEUPVALS                      R0
       24 RETURN                           R2 1
       25 GETIMPORT                        R2 K7 [pcall]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          REF R0
       30 CALL                             R2 1 2
       31 JUMPIFNOT                        R2 ; [+4]
       32 JUMPIFNOT                        R3 ; [+3]
       33 LOADB                            R4 1
       34 CLOSEUPVALS                      R0
       35 RETURN                           R4 1
       36 DUPTABLE                         R4 K10 [{["tbl"] = True}]
       37 JUMPIFNOT                        R0 ; [+42]
       38 FASTCALL1                        TYPEOF R0 ; [+3]
       39 MOVE                             R6 R0
       40 GETIMPORT                        R5 K1 [typeof]
       42 CALL                             R5 1 1
       43 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+36]
       45 FASTCALL1                        GETMETATABLE R0 ; [+3]
       46 MOVE                             R6 R0
       47 GETIMPORT                        R5 K12 [getmetatable]
       49 CALL                             R5 1 1
       50 MOVE                             R0 R5
       51 FASTCALL1                        TYPEOF R0 ; [+3]
       52 MOVE                             R6 R0
       53 GETIMPORT                        R5 K1 [typeof]
       55 CALL                             R5 1 1
       56 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+8]
       58 GETTABLEKS                       R0 R0 K13 ["__index"]
       60 JUMPIFNOTEQ                      R0 R1 ; [+4]
       62 LOADB                            R5 1
       63 CLOSEUPVALS                      R0
       64 RETURN                           R5 1
       65 FASTCALL1                        TYPEOF R0 ; [+3]
       66 MOVE                             R6 R0
       67 GETIMPORT                        R5 K1 [typeof]
       69 CALL                             R5 1 1
       70 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+8]
       72 GETTABLE                         R5 R4 R0
       73 JUMPIFNOT                        R5 ; [+3]
       74 LOADB                            R5 0
       75 CLOSEUPVALS                      R0
       76 RETURN                           R5 1
       77 LOADB                            R5 1
       78 SETTABLE                         R5 R4 R0
       79 JUMPBACK                         ; [-43]
       80 LOADB                            R5 0
       81 CLOSEUPVALS                      R0
       82 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
