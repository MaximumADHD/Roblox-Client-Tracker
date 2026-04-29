PROTO_0:
        0 LOADB                            R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["new"]
        4 JUMPIFEQKNIL                     R1 ; [+11]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K0 ["new"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["new"]
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
       36 DUPTABLE                         R4 K9 [{"tbl"}]
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K8 ["tbl"]
       40 JUMPIFNOT                        R0 ; [+42]
       41 FASTCALL1                        TYPEOF R0 ; [+3]
       42 MOVE                             R6 R0
       43 GETIMPORT                        R5 K1 [typeof]
       45 CALL                             R5 1 1
       46 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+36]
       48 FASTCALL1                        GETMETATABLE R0 ; [+3]
       49 MOVE                             R6 R0
       50 GETIMPORT                        R5 K11 [getmetatable]
       52 CALL                             R5 1 1
       53 MOVE                             R0 R5
       54 FASTCALL1                        TYPEOF R0 ; [+3]
       55 MOVE                             R6 R0
       56 GETIMPORT                        R5 K1 [typeof]
       58 CALL                             R5 1 1
       59 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+8]
       61 GETTABLEKS                       R0 R0 K12 ["__index"]
       63 JUMPIFNOTEQ                      R0 R1 ; [+4]
       65 LOADB                            R5 1
       66 CLOSEUPVALS                      R0
       67 RETURN                           R5 1
       68 FASTCALL1                        TYPEOF R0 ; [+3]
       69 MOVE                             R6 R0
       70 GETIMPORT                        R5 K1 [typeof]
       72 CALL                             R5 1 1
       73 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+8]
       75 GETTABLE                         R5 R4 R0
       76 JUMPIFNOT                        R5 ; [+3]
       77 LOADB                            R5 0
       78 CLOSEUPVALS                      R0
       79 RETURN                           R5 1
       80 LOADB                            R5 1
       81 SETTABLE                         R5 R4 R0
       82 JUMPBACK                         ; [-43]
       83 LOADB                            R5 0
       84 CLOSEUPVALS                      R0
       85 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
