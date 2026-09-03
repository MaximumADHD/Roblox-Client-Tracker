PROTO_0:
        0 DUPTABLE                         R1 K4 [{"value", "x", "y", "z"}]
        1 DUPTABLE                         R2 K7 [{[1], ["multiple"] = False}]
        2 SETTABLEKS                       R0 R2 K0 ["value"]
        4 SETTABLEKS                       R2 R1 K0 ["value"]
        6 DUPTABLE                         R2 K7 [{[1], ["multiple"] = False}]
        7 GETTABLEKS                       R3 R0 K8 ["X"]
        9 SETTABLEKS                       R3 R2 K0 ["value"]
       11 SETTABLEKS                       R2 R1 K1 ["x"]
       13 DUPTABLE                         R2 K7 [{[1], ["multiple"] = False}]
       14 GETTABLEKS                       R3 R0 K9 ["Y"]
       16 SETTABLEKS                       R3 R2 K0 ["value"]
       18 SETTABLEKS                       R2 R1 K2 ["y"]
       20 DUPTABLE                         R2 K7 [{[1], ["multiple"] = False}]
       21 GETTABLEKS                       R3 R0 K10 ["Z"]
       23 SETTABLEKS                       R3 R2 K0 ["value"]
       25 SETTABLEKS                       R2 R1 K3 ["z"]
       27 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R3 K1 ["multiple"]
        4 JUMPIFNOT                        R3 ; [+17]
        5 GETTABLEKS                       R3 R1 K2 ["x"]
        7 GETTABLEKS                       R3 R3 K1 ["multiple"]
        9 JUMPIFNOT                        R3 ; [+12]
       10 GETTABLEKS                       R3 R1 K3 ["y"]
       12 GETTABLEKS                       R3 R3 K1 ["multiple"]
       14 JUMPIFNOT                        R3 ; [+7]
       15 GETTABLEKS                       R3 R1 K4 ["z"]
       17 GETTABLEKS                       R3 R3 K1 ["multiple"]
       19 JUMPIFNOT                        R3 ; [+2]
       20 LOADB                            R3 1
       21 RETURN                           R3 1
       22 GETTABLEKS                       R3 R1 K2 ["x"]
       24 GETTABLEKS                       R3 R3 K1 ["multiple"]
       26 JUMPIF                           R3 ; [+14]
       27 GETTABLEKS                       R3 R1 K2 ["x"]
       29 GETTABLEKS                       R3 R3 K0 ["value"]
       31 GETTABLEKS                       R4 R2 K5 ["X"]
       33 JUMPIFEQ                         R3 R4 ; [+7]
       35 GETUPVAL                         R3 0
       36 SETTABLEKS                       R3 R1 K2 ["x"]
       38 GETUPVAL                         R3 0
       39 SETTABLEKS                       R3 R1 K0 ["value"]
       41 GETTABLEKS                       R3 R1 K3 ["y"]
       43 GETTABLEKS                       R3 R3 K1 ["multiple"]
       45 JUMPIF                           R3 ; [+14]
       46 GETTABLEKS                       R3 R1 K3 ["y"]
       48 GETTABLEKS                       R3 R3 K0 ["value"]
       50 GETTABLEKS                       R4 R2 K6 ["Y"]
       52 JUMPIFEQ                         R3 R4 ; [+7]
       54 GETUPVAL                         R3 0
       55 SETTABLEKS                       R3 R1 K3 ["y"]
       57 GETUPVAL                         R3 0
       58 SETTABLEKS                       R3 R1 K0 ["value"]
       60 GETTABLEKS                       R3 R1 K4 ["z"]
       62 GETTABLEKS                       R3 R3 K1 ["multiple"]
       64 JUMPIF                           R3 ; [+14]
       65 GETTABLEKS                       R3 R1 K4 ["z"]
       67 GETTABLEKS                       R3 R3 K0 ["value"]
       69 GETTABLEKS                       R4 R2 K7 ["Z"]
       71 JUMPIFEQ                         R3 R4 ; [+7]
       73 GETUPVAL                         R3 0
       74 SETTABLEKS                       R3 R1 K4 ["z"]
       76 GETUPVAL                         R3 0
       77 SETTABLEKS                       R3 R1 K0 ["value"]
       79 GETTABLEKS                       R3 R1 K0 ["value"]
       81 GETTABLEKS                       R3 R3 K1 ["multiple"]
       83 JUMPIFNOT                        R3 ; [+14]
       84 GETTABLEKS                       R3 R1 K2 ["x"]
       86 GETTABLEKS                       R3 R3 K1 ["multiple"]
       88 JUMPIFNOT                        R3 ; [+9]
       89 GETTABLEKS                       R3 R1 K3 ["y"]
       91 GETTABLEKS                       R3 R3 K1 ["multiple"]
       93 JUMPIFNOT                        R3 ; [+4]
       94 GETTABLEKS                       R3 R1 K4 ["z"]
       96 GETTABLEKS                       R3 R3 K1 ["multiple"]
       98 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R4 K0 ["x"] ; [+19]
        2 MOVE                             R8 R2
        3 MOVE                             R6 R3
        4 LOADN                            R7 1
        5 FORNPREP                         R6
        6 GETTABLE                         R9 R1 R8
        7 GETTABLEKS                       R12 R9 K1 ["Y"]
        9 GETTABLEKS                       R13 R9 K2 ["Z"]
       11 FASTCALL3                        VECTOR R5 R12 R13
       13 MOVE                             R11 R5
       14 GETIMPORT                        R10 K5 [Vector3.new]
       16 CALL                             R10 3 1
       17 SETTABLE                         R10 R1 R8
       18 FORNLOOP                         R6
       19 JUMP                             ; [+58]
       20 JUMPIFNOTEQKS                    R4 K6 ["y"] ; [+19]
       22 MOVE                             R8 R2
       23 MOVE                             R6 R3
       24 LOADN                            R7 1
       25 FORNPREP                         R6
       26 GETTABLE                         R9 R1 R8
       27 GETTABLEKS                       R11 R9 K7 ["X"]
       29 GETTABLEKS                       R13 R9 K2 ["Z"]
       31 FASTCALL3                        VECTOR R11 R5 R13
       33 MOVE                             R12 R5
       34 GETIMPORT                        R10 K5 [Vector3.new]
       36 CALL                             R10 3 1
       37 SETTABLE                         R10 R1 R8
       38 FORNLOOP                         R6
       39 JUMP                             ; [+38]
       40 JUMPIFNOTEQKS                    R4 K8 ["z"] ; [+19]
       42 MOVE                             R8 R2
       43 MOVE                             R6 R3
       44 LOADN                            R7 1
       45 FORNPREP                         R6
       46 GETTABLE                         R9 R1 R8
       47 GETTABLEKS                       R11 R9 K7 ["X"]
       49 GETTABLEKS                       R12 R9 K1 ["Y"]
       51 FASTCALL3                        VECTOR R11 R12 R5
       53 MOVE                             R13 R5
       54 GETIMPORT                        R10 K5 [Vector3.new]
       56 CALL                             R10 3 1
       57 SETTABLE                         R10 R1 R8
       58 FORNLOOP                         R6
       59 JUMP                             ; [+18]
       60 JUMPIFNOTEQKS                    R4 K9 ["value"] ; [+8]
       62 MOVE                             R8 R2
       63 MOVE                             R6 R3
       64 LOADN                            R7 1
       65 FORNPREP                         R6
       66 SETTABLE                         R5 R1 R8
       67 FORNLOOP                         R6
       68 JUMP                             ; [+9]
       69 GETIMPORT                        R6 K11 [error]
       71 LOADK                            R8 K12 ["Unexpected Vector3 part: %*"]
       72 MOVE                             R10 R4
       73 NAMECALL                         R8 R8 K13 ["format"]
       75 CALL                             R8 2 1
       76 MOVE                             R7 R8
       77 CALL                             R6 1 0
       78 LOADNIL                          R6
       79 RETURN                           R6 1

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
       41 GETTABLEKS                       R6 R6 K15 ["parseVector3ExpressionResults"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 DUPCLOSURE                       R7 K17 [PROTO_1]
       46 CAPTURE                          VAL R4
       47 DUPCLOSURE                       R8 K18 [PROTO_2]
       48 DUPTABLE                         R9 K21 [{"fromValue", "allMultiple"}]
       49 SETTABLEKS                       R6 R9 K19 ["fromValue"]
       51 DUPTABLE                         R10 K26 [{"value", "x", "y", "z"}]
       52 SETTABLEKS                       R4 R10 K22 ["value"]
       54 SETTABLEKS                       R4 R10 K23 ["x"]
       56 SETTABLEKS                       R4 R10 K24 ["y"]
       58 SETTABLEKS                       R4 R10 K25 ["z"]
       60 SETTABLEKS                       R10 R9 K20 ["allMultiple"]
       62 DUPTABLE                         R10 K32 [{"initParts", "addToAggregation", "setPart", "parsePartFromExpressionResults", "aggregateParts"}]
       63 DUPCLOSURE                       R11 K33 [PROTO_3]
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R11 R10 K27 ["initParts"]
       67 SETTABLEKS                       R7 R10 K28 ["addToAggregation"]
       69 SETTABLEKS                       R8 R10 K29 ["setPart"]
       71 SETTABLEKS                       R5 R10 K30 ["parsePartFromExpressionResults"]
       73 SETTABLEKS                       R9 R10 K31 ["aggregateParts"]
       75 RETURN                           R10 1
