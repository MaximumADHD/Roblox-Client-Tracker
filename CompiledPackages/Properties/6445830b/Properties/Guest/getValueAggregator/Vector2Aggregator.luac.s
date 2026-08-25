PROTO_0:
        0 DUPTABLE                         R1 K3 [{"value", "x", "y"}]
        1 DUPTABLE                         R2 K6 [{[1], ["multiple"] = False}]
        2 SETTABLEKS                       R0 R2 K0 ["value"]
        4 SETTABLEKS                       R2 R1 K0 ["value"]
        6 DUPTABLE                         R2 K6 [{[1], ["multiple"] = False}]
        7 GETTABLEKS                       R3 R0 K7 ["X"]
        9 SETTABLEKS                       R3 R2 K0 ["value"]
       11 SETTABLEKS                       R2 R1 K1 ["x"]
       13 DUPTABLE                         R2 K6 [{[1], ["multiple"] = False}]
       14 GETTABLEKS                       R3 R0 K8 ["Y"]
       16 SETTABLEKS                       R3 R2 K0 ["value"]
       18 SETTABLEKS                       R2 R1 K2 ["y"]
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R3 K1 ["multiple"]
        4 JUMPIFNOT                        R3 ; [+12]
        5 GETTABLEKS                       R3 R1 K2 ["x"]
        7 GETTABLEKS                       R3 R3 K1 ["multiple"]
        9 JUMPIFNOT                        R3 ; [+7]
       10 GETTABLEKS                       R3 R1 K3 ["y"]
       12 GETTABLEKS                       R3 R3 K1 ["multiple"]
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADB                            R3 1
       16 RETURN                           R3 1
       17 GETTABLEKS                       R3 R1 K2 ["x"]
       19 GETTABLEKS                       R3 R3 K1 ["multiple"]
       21 JUMPIF                           R3 ; [+14]
       22 GETTABLEKS                       R3 R1 K2 ["x"]
       24 GETTABLEKS                       R3 R3 K0 ["value"]
       26 GETTABLEKS                       R4 R2 K4 ["X"]
       28 JUMPIFEQ                         R3 R4 ; [+7]
       30 GETUPVAL                         R3 0
       31 SETTABLEKS                       R3 R1 K2 ["x"]
       33 GETUPVAL                         R3 0
       34 SETTABLEKS                       R3 R1 K0 ["value"]
       36 GETTABLEKS                       R3 R1 K3 ["y"]
       38 GETTABLEKS                       R3 R3 K1 ["multiple"]
       40 JUMPIF                           R3 ; [+14]
       41 GETTABLEKS                       R3 R1 K3 ["y"]
       43 GETTABLEKS                       R3 R3 K0 ["value"]
       45 GETTABLEKS                       R4 R2 K5 ["Y"]
       47 JUMPIFEQ                         R3 R4 ; [+7]
       49 GETUPVAL                         R3 0
       50 SETTABLEKS                       R3 R1 K3 ["y"]
       52 GETUPVAL                         R3 0
       53 SETTABLEKS                       R3 R1 K0 ["value"]
       55 GETTABLEKS                       R3 R1 K0 ["value"]
       57 GETTABLEKS                       R3 R3 K1 ["multiple"]
       59 JUMPIFNOT                        R3 ; [+9]
       60 GETTABLEKS                       R3 R1 K2 ["x"]
       62 GETTABLEKS                       R3 R3 K1 ["multiple"]
       64 JUMPIFNOT                        R3 ; [+4]
       65 GETTABLEKS                       R3 R1 K3 ["y"]
       67 GETTABLEKS                       R3 R3 K1 ["multiple"]
       69 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R4 K0 ["x"] ; [+15]
        2 MOVE                             R8 R2
        3 MOVE                             R6 R3
        4 LOADN                            R7 1
        5 FORNPREP                         R6
        6 GETTABLE                         R9 R1 R8
        7 GETIMPORT                        R10 K3 [Vector2.new]
        9 MOVE                             R11 R5
       10 GETTABLEKS                       R12 R9 K4 ["Y"]
       12 CALL                             R10 2 1
       13 SETTABLE                         R10 R1 R8
       14 FORNLOOP                         R6
       15 JUMP                             ; [+34]
       16 JUMPIFNOTEQKS                    R4 K5 ["y"] ; [+15]
       18 MOVE                             R8 R2
       19 MOVE                             R6 R3
       20 LOADN                            R7 1
       21 FORNPREP                         R6
       22 GETTABLE                         R9 R1 R8
       23 GETIMPORT                        R10 K3 [Vector2.new]
       25 GETTABLEKS                       R11 R9 K6 ["X"]
       27 MOVE                             R12 R5
       28 CALL                             R10 2 1
       29 SETTABLE                         R10 R1 R8
       30 FORNLOOP                         R6
       31 JUMP                             ; [+18]
       32 JUMPIFNOTEQKS                    R4 K7 ["value"] ; [+8]
       34 MOVE                             R8 R2
       35 MOVE                             R6 R3
       36 LOADN                            R7 1
       37 FORNPREP                         R6
       38 SETTABLE                         R5 R1 R8
       39 FORNLOOP                         R6
       40 JUMP                             ; [+9]
       41 GETIMPORT                        R6 K9 [error]
       43 LOADK                            R8 K10 ["Unexpected Vector2 part: %*"]
       44 MOVE                             R10 R4
       45 NAMECALL                         R8 R8 K11 ["format"]
       47 CALL                             R8 2 1
       48 MOVE                             R7 R8
       49 CALL                             R6 1 0
       50 LOADNIL                          R6
       51 RETURN                           R6 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["getAggregateParts"]
       13 GETTABLEKS                       R2 R2 K8 ["AggregatePartsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["CapturableWarnings"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["PropertyTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["PropertyInteraction"]
       37 GETTABLEKS                       R6 R6 K13 ["genericMultiplePart"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K14 [PROTO_0]
       41 DUPCLOSURE                       R7 K15 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R8 K16 [PROTO_2]
       44 DUPCLOSURE                       R9 K17 [PROTO_3]
       45 DUPCLOSURE                       R10 K18 [PROTO_4]
       46 CAPTURE                          VAL R9
       47 DUPTABLE                         R11 K21 [{"fromValue", "allMultiple"}]
       48 SETTABLEKS                       R6 R11 K19 ["fromValue"]
       50 DUPTABLE                         R12 K25 [{"value", "x", "y"}]
       51 SETTABLEKS                       R5 R12 K22 ["value"]
       53 SETTABLEKS                       R5 R12 K23 ["x"]
       55 SETTABLEKS                       R5 R12 K24 ["y"]
       57 SETTABLEKS                       R12 R11 K20 ["allMultiple"]
       59 DUPTABLE                         R12 K31 [{"initParts", "addToAggregation", "setPart", "parsePartFromExpressionResults", "aggregateParts"}]
       60 DUPCLOSURE                       R13 K32 [PROTO_5]
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R13 R12 K26 ["initParts"]
       64 SETTABLEKS                       R7 R12 K27 ["addToAggregation"]
       66 SETTABLEKS                       R8 R12 K28 ["setPart"]
       68 SETTABLEKS                       R10 R12 K29 ["parsePartFromExpressionResults"]
       70 SETTABLEKS                       R11 R12 K30 ["aggregateParts"]
       72 RETURN                           R12 1
