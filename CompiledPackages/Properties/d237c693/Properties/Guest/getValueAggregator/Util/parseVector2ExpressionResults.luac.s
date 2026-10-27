PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 1
        8 DUPTABLE                         R1 K6 [{["type"] = "error", ["warning"]}]
        9 DUPTABLE                         R2 K10 [{["type"] = "expressionWrongType", ["received"], ["expected"] = "number"}]
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K8 ["received"]
       17 SETTABLEKS                       R2 R1 K5 ["warning"]
       19 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKS                       R0 K0 ["value"] ; [+16]
        2 GETUPVAL                         R2 0
        3 GETTABLEN                        R3 R1 1
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K2 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+2]
       12 RETURN                           R2 1
       13 DUPTABLE                         R3 K6 [{["type"] = "ok", [2]}]
       14 SETTABLEKS                       R2 R3 K0 ["value"]
       16 RETURN                           R3 1
       17 LENGTH                           R2 R1
       18 JUMPIFNOTEQKN                    R2 K7 [1] ; [+41]
       20 GETTABLEN                        R2 R1 1
       21 FASTCALL1                        TYPEOF R2 ; [+3]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K2 [typeof]
       25 CALL                             R3 1 1
       26 JUMPIFNOTEQKS                    R3 K8 ["Vector2"] ; [+5]
       28 DUPTABLE                         R3 K6 [{["type"] = "ok", [2]}]
       29 SETTABLEKS                       R2 R3 K0 ["value"]
       31 RETURN                           R3 1
       32 FASTCALL1                        TYPEOF R2 ; [+3]
       33 MOVE                             R4 R2
       34 GETIMPORT                        R3 K2 [typeof]
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+10]
       39 DUPTABLE                         R3 K6 [{["type"] = "ok", [2]}]
       40 GETIMPORT                        R4 K11 [Vector2.new]
       42 MOVE                             R5 R2
       43 MOVE                             R6 R2
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K0 ["value"]
       47 RETURN                           R3 1
       48 DUPTABLE                         R3 K14 [{["type"] = "error", ["warning"]}]
       49 DUPTABLE                         R4 K18 [{["type"] = "expressionWrongType", ["received"], ["expected"] = "number"}]
       50 FASTCALL1                        TYPEOF R2 ; [+3]
       51 MOVE                             R6 R2
       52 GETIMPORT                        R5 K2 [typeof]
       54 CALL                             R5 1 1
       55 SETTABLEKS                       R5 R4 K16 ["received"]
       57 SETTABLEKS                       R4 R3 K13 ["warning"]
       59 RETURN                           R3 1
       60 GETUPVAL                         R2 0
       61 GETTABLEN                        R3 R1 1
       62 CALL                             R2 1 1
       63 FASTCALL1                        TYPEOF R2 ; [+3]
       64 MOVE                             R4 R2
       65 GETIMPORT                        R3 K2 [typeof]
       67 CALL                             R3 1 1
       68 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+2]
       70 RETURN                           R2 1
       71 GETUPVAL                         R3 0
       72 GETTABLEN                        R4 R1 2
       73 CALL                             R3 1 1
       74 FASTCALL1                        TYPEOF R3 ; [+3]
       75 MOVE                             R5 R3
       76 GETIMPORT                        R4 K2 [typeof]
       78 CALL                             R4 1 1
       79 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+2]
       81 RETURN                           R3 1
       82 DUPTABLE                         R4 K6 [{["type"] = "ok", [2]}]
       83 GETIMPORT                        R5 K11 [Vector2.new]
       85 MOVE                             R6 R2
       86 MOVE                             R7 R3
       87 CALL                             R5 2 1
       88 SETTABLEKS                       R5 R4 K0 ["value"]
       90 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["CapturableWarnings"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1
