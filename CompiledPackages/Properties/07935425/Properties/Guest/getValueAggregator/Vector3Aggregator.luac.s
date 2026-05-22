PROTO_0:
        0 DUPTABLE                         R2 K4 [{"value", "x", "y", "z"}]
        1 DUPTABLE                         R3 K6 [{"value", "multiple"}]
        2 SETTABLEKS                       R1 R3 K0 ["value"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K5 ["multiple"]
        7 SETTABLEKS                       R3 R2 K0 ["value"]
        9 DUPTABLE                         R3 K6 [{"value", "multiple"}]
       10 GETTABLEKS                       R4 R1 K7 ["X"]
       12 SETTABLEKS                       R4 R3 K0 ["value"]
       14 LOADB                            R4 0
       15 SETTABLEKS                       R4 R3 K5 ["multiple"]
       17 SETTABLEKS                       R3 R2 K1 ["x"]
       19 DUPTABLE                         R3 K6 [{"value", "multiple"}]
       20 GETTABLEKS                       R4 R1 K8 ["Y"]
       22 SETTABLEKS                       R4 R3 K0 ["value"]
       24 LOADB                            R4 0
       25 SETTABLEKS                       R4 R3 K5 ["multiple"]
       27 SETTABLEKS                       R3 R2 K2 ["y"]
       29 DUPTABLE                         R3 K6 [{"value", "multiple"}]
       30 GETTABLEKS                       R4 R1 K9 ["Z"]
       32 SETTABLEKS                       R4 R3 K0 ["value"]
       34 LOADB                            R4 0
       35 SETTABLEKS                       R4 R3 K5 ["multiple"]
       37 SETTABLEKS                       R3 R2 K3 ["z"]
       39 RETURN                           R2 1

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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["RpcTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["PropertyInteraction"]
       21 GETTABLEKS                       R4 R4 K9 ["genericMultiplePart"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 DUPCLOSURE                       R5 K11 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 DUPCLOSURE                       R6 K12 [PROTO_2]
       28 DUPTABLE                         R7 K16 [{"initParts", "addToAggregation", "setPart"}]
       29 SETTABLEKS                       R4 R7 K13 ["initParts"]
       31 SETTABLEKS                       R5 R7 K14 ["addToAggregation"]
       33 SETTABLEKS                       R6 R7 K15 ["setPart"]
       35 RETURN                           R7 1
