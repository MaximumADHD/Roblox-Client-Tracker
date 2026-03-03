PROTO_0:
        0 DUPTABLE                         R2 K3 [{"value", "x", "y"}]
        1 DUPTABLE                         R3 K5 [{"value", "multiple"}]
        2 SETTABLEKS                       R1 R3 K0 ["value"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K4 ["multiple"]
        7 SETTABLEKS                       R3 R2 K0 ["value"]
        9 DUPTABLE                         R3 K5 [{"value", "multiple"}]
       10 GETTABLEKS                       R4 R1 K6 ["X"]
       12 SETTABLEKS                       R4 R3 K0 ["value"]
       14 LOADB                            R4 0
       15 SETTABLEKS                       R4 R3 K4 ["multiple"]
       17 SETTABLEKS                       R3 R2 K1 ["x"]
       19 DUPTABLE                         R3 K5 [{"value", "multiple"}]
       20 GETTABLEKS                       R4 R1 K7 ["Y"]
       22 SETTABLEKS                       R4 R3 K0 ["value"]
       24 LOADB                            R4 0
       25 SETTABLEKS                       R4 R3 K4 ["multiple"]
       27 SETTABLEKS                       R3 R2 K2 ["y"]
       29 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R4 K1 ["multiple"]
        4 JUMPIFNOT                        R3 ; [+12]
        5 GETTABLEKS                       R4 R1 K2 ["x"]
        7 GETTABLEKS                       R3 R4 K1 ["multiple"]
        9 JUMPIFNOT                        R3 ; [+7]
       10 GETTABLEKS                       R4 R1 K3 ["y"]
       12 GETTABLEKS                       R3 R4 K1 ["multiple"]
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADB                            R3 1
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R1 K2 ["x"]
       19 GETTABLEKS                       R3 R4 K1 ["multiple"]
       21 JUMPIF                           R3 ; [+18]
       22 GETTABLEKS                       R4 R1 K2 ["x"]
       24 GETTABLEKS                       R3 R4 K0 ["value"]
       26 GETTABLEKS                       R4 R2 K4 ["X"]
       28 JUMPIFEQ                         R3 R4 ; [+11]
       30 GETTABLEKS                       R3 R1 K2 ["x"]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K1 ["multiple"]
       35 GETTABLEKS                       R3 R1 K0 ["value"]
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K1 ["multiple"]
       40 GETTABLEKS                       R4 R1 K3 ["y"]
       42 GETTABLEKS                       R3 R4 K1 ["multiple"]
       44 JUMPIF                           R3 ; [+18]
       45 GETTABLEKS                       R4 R1 K3 ["y"]
       47 GETTABLEKS                       R3 R4 K0 ["value"]
       49 GETTABLEKS                       R4 R2 K5 ["Y"]
       51 JUMPIFEQ                         R3 R4 ; [+11]
       53 GETTABLEKS                       R3 R1 K3 ["y"]
       55 LOADB                            R4 1
       56 SETTABLEKS                       R4 R3 K1 ["multiple"]
       58 GETTABLEKS                       R3 R1 K0 ["value"]
       60 LOADB                            R4 1
       61 SETTABLEKS                       R4 R3 K1 ["multiple"]
       63 GETTABLEKS                       R4 R1 K0 ["value"]
       65 GETTABLEKS                       R3 R4 K1 ["multiple"]
       67 JUMPIFNOT                        R3 ; [+9]
       68 GETTABLEKS                       R4 R1 K2 ["x"]
       70 GETTABLEKS                       R3 R4 K1 ["multiple"]
       72 JUMPIFNOT                        R3 ; [+4]
       73 GETTABLEKS                       R4 R1 K3 ["y"]
       75 GETTABLEKS                       R3 R4 K1 ["multiple"]
       77 RETURN                           R3 1

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
       17 DUPCLOSURE                       R3 K8 [PROTO_0]
       18 DUPCLOSURE                       R4 K9 [PROTO_1]
       19 DUPCLOSURE                       R5 K10 [PROTO_2]
       20 DUPTABLE                         R6 K14 [{"initParts", "addToAggregation", "setPart"}]
       21 SETTABLEKS                       R3 R6 K11 ["initParts"]
       23 SETTABLEKS                       R4 R6 K12 ["addToAggregation"]
       25 SETTABLEKS                       R5 R6 K13 ["setPart"]
       27 RETURN                           R6 1
