PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+8]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K1 [typeof]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K3 ["nil"] ; [+2]
       14 RETURN                           R0 1
       15 DUPTABLE                         R1 K7 [{["type"] = "error", ["warning"]}]
       16 DUPTABLE                         R2 K11 [{["type"] = "expressionWrongType", ["received"], ["expected"] = "number"}]
       17 FASTCALL1                        TYPEOF R0 ; [+3]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K1 [typeof]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K9 ["received"]
       24 SETTABLEKS                       R2 R1 K6 ["warning"]
       26 RETURN                           R1 1

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
       18 JUMPIFNOTEQKN                    R2 K7 [1] ; [+44]
       20 GETTABLEN                        R2 R1 1
       21 FASTCALL1                        TYPEOF R2 ; [+3]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K2 [typeof]
       25 CALL                             R3 1 1
       26 JUMPIFNOTEQKS                    R3 K8 ["Vector3"] ; [+5]
       28 DUPTABLE                         R3 K6 [{["type"] = "ok", [2]}]
       29 SETTABLEKS                       R2 R3 K0 ["value"]
       31 RETURN                           R3 1
       32 FASTCALL1                        TYPEOF R2 ; [+3]
       33 MOVE                             R4 R2
       34 GETIMPORT                        R3 K2 [typeof]
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+13]
       39 DUPTABLE                         R3 K6 [{["type"] = "ok", [2]}]
       40 FASTCALL3                        VECTOR R2 R2 R2
       42 MOVE                             R5 R2
       43 MOVE                             R6 R2
       44 MOVE                             R7 R2
       45 GETIMPORT                        R4 K11 [Vector3.new]
       47 CALL                             R4 3 1
       48 SETTABLEKS                       R4 R3 K0 ["value"]
       50 RETURN                           R3 1
       51 DUPTABLE                         R3 K14 [{["type"] = "error", ["warning"]}]
       52 DUPTABLE                         R4 K18 [{["type"] = "expressionWrongType", ["received"], ["expected"] = "number"}]
       53 FASTCALL1                        TYPEOF R2 ; [+3]
       54 MOVE                             R6 R2
       55 GETIMPORT                        R5 K2 [typeof]
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K16 ["received"]
       60 SETTABLEKS                       R4 R3 K13 ["warning"]
       62 RETURN                           R3 1
       63 GETUPVAL                         R2 0
       64 GETTABLEN                        R3 R1 1
       65 CALL                             R2 1 1
       66 FASTCALL1                        TYPEOF R2 ; [+3]
       67 MOVE                             R4 R2
       68 GETIMPORT                        R3 K2 [typeof]
       70 CALL                             R3 1 1
       71 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+2]
       73 RETURN                           R2 1
       74 GETUPVAL                         R3 0
       75 GETTABLEN                        R4 R1 2
       76 CALL                             R3 1 1
       77 FASTCALL1                        TYPEOF R3 ; [+3]
       78 MOVE                             R5 R3
       79 GETIMPORT                        R4 K2 [typeof]
       81 CALL                             R4 1 1
       82 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+2]
       84 RETURN                           R3 1
       85 GETUPVAL                         R4 0
       86 GETTABLEN                        R5 R1 3
       87 CALL                             R4 1 1
       88 FASTCALL1                        TYPEOF R4 ; [+3]
       89 MOVE                             R6 R4
       90 GETIMPORT                        R5 K2 [typeof]
       92 CALL                             R5 1 1
       93 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+2]
       95 RETURN                           R4 1
       96 DUPTABLE                         R5 K6 [{["type"] = "ok", [2]}]
       97 ORK                              R7 R2 K19 [0]
       98 ORK                              R8 R3 K19 [0]
       99 ORK                              R9 R4 K19 [0]
      100 FASTCALL                         VECTOR ; [+2]
      101 GETIMPORT                        R6 K11 [Vector3.new]
      103 CALL                             R6 3 1
      104 SETTABLEKS                       R6 R5 K0 ["value"]
      106 RETURN                           R5 1

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
