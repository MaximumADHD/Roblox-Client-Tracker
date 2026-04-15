PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+10]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K1 [typeof]
       11 CALL                             R1 1 1
       12 JUMPIFEQKS                       R1 K3 ["number"] ; [+3]
       14 JUMPIFNOTEQKNIL                  R0 ; [+2]
       16 RETURN                           R0 1
       17 FASTCALL1                        TYPEOF R0 ; [+3]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K1 [typeof]
       21 CALL                             R1 1 1
       22 JUMPIFEQKS                       R1 K4 ["function"] ; [+9]
       24 GETIMPORT                        R1 K6 [error]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K7 ["new"]
       29 LOADK                            R3 K8 ["describe expects a function, number, or string."]
       30 CALL                             R2 1 -1
       31 CALL                             R1 -1 0
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R1 R2 K9 ["trim"]
       35 GETIMPORT                        R2 K12 [debug.info]
       37 MOVE                             R3 R0
       38 LOADK                            R4 K13 ["n"]
       39 CALL                             R2 2 -1
       40 CALL                             R1 -1 1
       41 JUMPIFEQKNIL                     R1 ; [+4]
       43 JUMPIFEQKS                       R1 K14 [""] ; [+2]
       45 RETURN                           R1 1
       46 LOADK                            R2 K15 ["[Function anonymous]"]
       47 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Error"]
       14 GETTABLEKS                       R4 R2 K7 ["String"]
       16 NEWTABLE                         R5 1 0
       18 DUPCLOSURE                       R6 K8 [PROTO_0]
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 SETTABLEKS                       R6 R5 K9 ["default"]
       23 RETURN                           R5 1
