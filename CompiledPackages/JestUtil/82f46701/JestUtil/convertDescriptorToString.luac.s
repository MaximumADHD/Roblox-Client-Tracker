PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+16]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["trim"]
       10 GETIMPORT                        R3 K6 [debug.info]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K7 ["n"]
       14 CALL                             R3 2 -1
       15 CALL                             R2 -1 1
       16 JUMPIFEQKNIL                     R2 ; [+22]
       18 JUMPIFEQKS                       R2 K8 [""] ; [+20]
       20 RETURN                           R2 1
       21 JUMP                             ; [+17]
       22 JUMPIFEQKS                       R1 K9 ["number"] ; [+3]
       24 JUMPIFNOTEQKNIL                  R0 ; [+11]
       26 LOADK                            R2 K10 ["%s"]
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R5 R0
       29 GETIMPORT                        R4 K12 [tostring]
       31 CALL                             R4 1 1
       32 NAMECALL                         R2 R2 K13 ["format"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1
       36 JUMPIFNOTEQKS                    R1 K14 ["string"] ; [+2]
       38 RETURN                           R0 1
       39 LOADNIL                          R2
       40 FASTCALL1                        TYPEOF R0 ; [+3]
       41 MOVE                             R4 R0
       42 GETIMPORT                        R3 K1 [typeof]
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+3]
       47 LOADK                            R2 K15 ["[Function anonymous]"]
       48 JUMP                             ; [+6]
       49 FASTCALL1                        TOSTRING R0 ; [+3]
       50 MOVE                             R4 R0
       51 GETIMPORT                        R3 K12 [tostring]
       53 CALL                             R3 1 1
       54 MOVE                             R2 R3
       55 GETIMPORT                        R3 K17 [error]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R4 R4 K18 ["new"]
       60 LOADK                            R5 K19 ["Invalid first argument, %s. It must be a named function, number, or string."]
       61 MOVE                             R7 R2
       62 NAMECALL                         R5 R5 K13 ["format"]
       64 CALL                             R5 2 -1
       65 CALL                             R4 -1 -1
       66 CALL                             R3 -1 0
       67 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Error"]
       14 GETTABLEKS                       R4 R2 K7 ["String"]
       16 NEWTABLE                         R5 1 0
       18 DUPCLOSURE                       R6 K8 [PROTO_0]
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R6 R5 K9 ["default"]
       23 RETURN                           R5 1
