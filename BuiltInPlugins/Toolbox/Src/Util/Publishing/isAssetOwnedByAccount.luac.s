PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Name"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["number"] ; [+3]
        7 JUMPIFNOTEQKN                    R1 K3 [0] ; [+3]
        9 LOADB                            R4 0
       10 RETURN                           R4 1
       11 FASTCALL1                        TYPE R3 ; [+3]
       12 MOVE                             R5 R3
       13 GETIMPORT                        R4 K1 [type]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K2 ["number"] ; [+3]
       18 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       20 LOADB                            R4 0
       21 RETURN                           R4 1
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R6 R0
       24 GETIMPORT                        R5 K5 [typeof]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K6 ["EnumItem"] ; [+4]
       29 GETTABLEKS                       R4 R0 K7 ["Name"]
       31 JUMP                             ; [+10]
       32 FASTCALL1                        TYPE R0 ; [+3]
       33 MOVE                             R6 R0
       34 GETIMPORT                        R5 K1 [type]
       36 CALL                             R5 1 1
       37 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+3]
       39 MOVE                             R4 R0
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 FASTCALL1                        TYPEOF R2 ; [+3]
       43 MOVE                             R7 R2
       44 GETIMPORT                        R6 K5 [typeof]
       46 CALL                             R6 1 1
       47 JUMPIFNOTEQKS                    R6 K6 ["EnumItem"] ; [+4]
       49 GETTABLEKS                       R5 R2 K7 ["Name"]
       51 JUMP                             ; [+10]
       52 FASTCALL1                        TYPE R2 ; [+3]
       53 MOVE                             R7 R2
       54 GETIMPORT                        R6 K1 [type]
       56 CALL                             R6 1 1
       57 JUMPIFNOTEQKS                    R6 K8 ["string"] ; [+3]
       59 MOVE                             R5 R2
       60 JUMP                             ; [+1]
       61 LOADNIL                          R5
       62 JUMPIFEQKNIL                     R4 ; [+3]
       64 JUMPIFNOTEQKNIL                  R5 ; [+3]
       66 LOADB                            R6 0
       67 RETURN                           R6 1
       68 GETUPVAL                         R7 0
       69 GETTABLE                         R6 R7 R4
       70 JUMPIFNOT                        R6 ; [+3]
       71 GETUPVAL                         R7 0
       72 GETTABLE                         R6 R7 R5
       73 JUMPIF                           R6 ; [+2]
       74 LOADB                            R6 0
       75 RETURN                           R6 1
       76 LOADB                            R6 0
       77 JUMPIFNOTEQ                      R4 R5 ; [+5]
       79 JUMPIFEQ                         R1 R3 ; [+2]
       81 LOADB                            R6 0 +1
       82 LOADB                            R6 1
       83 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = True, ["Group"] = True, ["Experience"] = True}]
        2 DUPCLOSURE                       R1 K5 [PROTO_0]
        3 DUPCLOSURE                       R2 K6 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1
