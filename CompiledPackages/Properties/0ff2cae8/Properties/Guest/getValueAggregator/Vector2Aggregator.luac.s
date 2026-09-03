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
       18 GETTABLEKS                       R3 R0 K9 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["PropertyInteraction"]
       30 GETTABLEKS                       R5 R5 K11 ["genericMultiplePart"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Guest"]
       37 GETTABLEKS                       R6 R6 K13 ["getValueAggregator"]
       39 GETTABLEKS                       R6 R6 K14 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["parseVector2ExpressionResults"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 DUPCLOSURE                       R7 K17 [PROTO_1]
       46 CAPTURE                          VAL R4
       47 DUPCLOSURE                       R8 K18 [PROTO_2]
       48 DUPTABLE                         R9 K21 [{"fromValue", "allMultiple"}]
       49 SETTABLEKS                       R6 R9 K19 ["fromValue"]
       51 DUPTABLE                         R10 K25 [{"value", "x", "y"}]
       52 SETTABLEKS                       R4 R10 K22 ["value"]
       54 SETTABLEKS                       R4 R10 K23 ["x"]
       56 SETTABLEKS                       R4 R10 K24 ["y"]
       58 SETTABLEKS                       R10 R9 K20 ["allMultiple"]
       60 DUPTABLE                         R10 K31 [{"initParts", "addToAggregation", "setPart", "parsePartFromExpressionResults", "aggregateParts"}]
       61 DUPCLOSURE                       R11 K32 [PROTO_3]
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R11 R10 K26 ["initParts"]
       65 SETTABLEKS                       R7 R10 K27 ["addToAggregation"]
       67 SETTABLEKS                       R8 R10 K28 ["setPart"]
       69 SETTABLEKS                       R5 R10 K29 ["parsePartFromExpressionResults"]
       71 SETTABLEKS                       R9 R10 K30 ["aggregateParts"]
       73 RETURN                           R10 1
