PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_reporters"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_reporters"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 NOT                              R1 R2
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["filter"]
        3 GETTABLEKS                       R3 R0 K1 ["_reporters"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K1 ["_reporters"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onTestFileResult"]
        8 JUMPIFEQKNIL                     R5 ; [+16]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["resolve"]
       13 GETTABLEKS                       R6 R4 K1 ["onTestFileResult"]
       15 MOVE                             R7 R4
       16 GETUPVAL                         R8 2
       17 GETUPVAL                         R9 3
       18 GETUPVAL                         R10 4
       19 CALL                             R6 4 -1
       20 CALL                             R5 -1 1
       21 NAMECALL                         R5 R5 K3 ["expect"]
       23 CALL                             R5 1 0
       24 JUMP                             ; [+18]
       25 GETTABLEKS                       R5 R4 K4 ["onTestResult"]
       27 JUMPIFEQKNIL                     R5 ; [+15]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K2 ["resolve"]
       32 GETTABLEKS                       R6 R4 K4 ["onTestResult"]
       34 MOVE                             R7 R4
       35 GETUPVAL                         R8 2
       36 GETUPVAL                         R9 3
       37 GETUPVAL                         R10 4
       38 CALL                             R6 4 -1
       39 CALL                             R5 -1 1
       40 NAMECALL                         R5 R5 K3 ["expect"]
       42 CALL                             R5 1 0
       43 FORGLOOP                         R0 2 ; [-38]
       45 GETUPVAL                         R0 3
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K5 ["coverage"]
       49 GETUPVAL                         R0 3
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K6 ["console"]
       53 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["resolve"]
        3 CALL                             R4 0 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 NAMECALL                         R4 R4 K1 ["andThen"]
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onTestFileStart"]
        8 JUMPIFEQKNIL                     R5 ; [+14]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["resolve"]
       13 GETTABLEKS                       R6 R4 K1 ["onTestFileStart"]
       15 MOVE                             R7 R4
       16 GETUPVAL                         R8 2
       17 CALL                             R6 2 -1
       18 CALL                             R5 -1 1
       19 NAMECALL                         R5 R5 K3 ["expect"]
       21 CALL                             R5 1 0
       22 JUMP                             ; [+16]
       23 GETTABLEKS                       R5 R4 K4 ["onTestStart"]
       25 JUMPIFEQKNIL                     R5 ; [+13]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K2 ["resolve"]
       30 GETTABLEKS                       R6 R4 K4 ["onTestStart"]
       32 MOVE                             R7 R4
       33 GETUPVAL                         R8 2
       34 CALL                             R6 2 -1
       35 CALL                             R5 -1 1
       36 NAMECALL                         R5 R5 K3 ["expect"]
       38 CALL                             R5 1 0
       39 FORGLOOP                         R0 2 ; [-34]
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R2 R2 K1 ["andThen"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onRunStart"]
        8 JUMPIFEQKNIL                     R5 ; [+13]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["resolve"]
       13 GETUPVAL                         R8 2
       14 GETUPVAL                         R9 3
       15 NAMECALL                         R6 R4 K1 ["onRunStart"]
       17 CALL                             R6 3 -1
       18 CALL                             R5 -1 1
       19 NAMECALL                         R5 R5 K3 ["expect"]
       21 CALL                             R5 1 0
       22 FORGLOOP                         R0 2 ; [-17]
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R3 K1 ["andThen"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onTestCaseResult"]
        8 JUMPIFEQKNIL                     R5 ; [+14]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["resolve"]
       13 GETTABLEKS                       R6 R4 K1 ["onTestCaseResult"]
       15 MOVE                             R7 R4
       16 GETUPVAL                         R8 2
       17 GETUPVAL                         R9 3
       18 CALL                             R6 3 -1
       19 CALL                             R5 -1 1
       20 NAMECALL                         R5 R5 K3 ["expect"]
       22 CALL                             R5 1 0
       23 FORGLOOP                         R0 2 ; [-18]
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R3 K1 ["andThen"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onRunComplete"]
        8 JUMPIFEQKNIL                     R5 ; [+13]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["resolve"]
       13 GETUPVAL                         R8 2
       14 GETUPVAL                         R9 3
       15 NAMECALL                         R6 R4 K1 ["onRunComplete"]
       17 CALL                             R6 3 -1
       18 CALL                             R5 -1 1
       19 NAMECALL                         R5 R5 K3 ["expect"]
       21 CALL                             R5 1 0
       22 FORGLOOP                         R0 2 ; [-17]
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R3 K1 ["andThen"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["getLastError"]
        2 JUMPIFEQKNIL                     R3 ; [+5]
        4 NAMECALL                         R2 R1 K0 ["getLastError"]
        6 CALL                             R2 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["concat"]
       14 MOVE                             R4 R0
       15 MOVE                             R5 R2
       16 CALL                             R3 2 1
       17 RETURN                           R3 1
       18 MOVE                             R3 R0
       19 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reduce"]
        3 GETTABLEKS                       R2 R0 K1 ["_reporters"]
        5 DUPCLOSURE                       R3 K2 [PROTO_14]
        6 CAPTURE                          UPVAL U0
        7 NEWTABLE                         R4 0 0
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_16:
        0 NAMECALL                         R3 R0 K0 ["getErrors"]
        2 CALL                             R3 1 1
        3 LENGTH                           R2 R3
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["instanceof"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Promise"]
       20 CALL                             R4 1 1
       21 NEWTABLE                         R5 1 0
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K9 ["JestReporters"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K10 ["JestTestResult"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R9 R0 K11 ["JestRuntime"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K4 [require]
       40 GETIMPORT                        R12 K1 [script]
       42 GETTABLEKS                       R11 R12 K2 ["Parent"]
       44 GETTABLEKS                       R10 R11 K12 ["types"]
       46 CALL                             R9 1 1
       47 NEWTABLE                         R10 0 0
       49 SETTABLEKS                       R10 R10 K13 ["__index"]
       51 DUPCLOSURE                       R11 K14 [PROTO_0]
       52 CAPTURE                          VAL R10
       53 SETTABLEKS                       R11 R10 K15 ["new"]
       55 DUPCLOSURE                       R11 K16 [PROTO_1]
       56 SETTABLEKS                       R11 R10 K17 ["register"]
       58 DUPCLOSURE                       R11 K18 [PROTO_3]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R11 R10 K19 ["unregister"]
       63 DUPCLOSURE                       R11 K20 [PROTO_5]
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R11 R10 K21 ["onTestFileResult"]
       67 DUPCLOSURE                       R11 K22 [PROTO_7]
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R11 R10 K23 ["onTestFileStart"]
       71 DUPCLOSURE                       R11 K24 [PROTO_9]
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R11 R10 K25 ["onRunStart"]
       75 DUPCLOSURE                       R11 K26 [PROTO_11]
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R11 R10 K27 ["onTestCaseResult"]
       79 DUPCLOSURE                       R11 K28 [PROTO_13]
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R11 R10 K29 ["onRunComplete"]
       83 DUPCLOSURE                       R11 K30 [PROTO_15]
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R11 R10 K31 ["getErrors"]
       87 DUPCLOSURE                       R11 K32 [PROTO_16]
       88 SETTABLEKS                       R11 R10 K33 ["hasErrors"]
       90 SETTABLEKS                       R10 R5 K34 ["default"]
       92 RETURN                           R5 1
