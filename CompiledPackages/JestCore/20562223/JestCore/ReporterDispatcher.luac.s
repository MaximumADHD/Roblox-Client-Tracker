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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["filter"]
        3 GETTABLEKS                       R3 R0 K1 ["_reporters"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K1 ["_reporters"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onTestFileResult"]
        8 JUMPIFEQKNIL                     R5 ; [+16]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["resolve"]
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
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K2 ["resolve"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["resolve"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onTestFileStart"]
        8 JUMPIFEQKNIL                     R5 ; [+14]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["resolve"]
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
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K2 ["resolve"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R2 R2 K1 ["andThen"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onRunStart"]
        8 JUMPIFEQKNIL                     R5 ; [+13]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["resolve"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onTestCaseResult"]
        8 JUMPIFEQKNIL                     R5 ; [+14]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["resolve"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_reporters"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["onRunComplete"]
        8 JUMPIFEQKNIL                     R5 ; [+13]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["resolve"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
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
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_reporters"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R6 K1 ["getLastError"]
        9 JUMPIFEQKNIL                     R8 ; [+5]
       11 NAMECALL                         R7 R6 K1 ["getLastError"]
       13 CALL                             R7 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R7
       16 JUMPIFEQKNIL                     R7 ; [+8]
       18 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       20 MOVE                             R9 R1
       21 MOVE                             R10 R7
       22 GETIMPORT                        R8 K4 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R2 2 ; [-19]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K5 ["from"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 1
       32 RETURN                           R2 1

PROTO_15:
        0 NAMECALL                         R3 R0 K0 ["getErrors"]
        2 CALL                             R3 1 1
        3 LENGTH                           R2 R3
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R9 R9 K2 ["Parent"]
       39 GETTABLEKS                       R9 R9 K11 ["types"]
       41 CALL                             R8 1 1
       42 NEWTABLE                         R9 0 0
       44 SETTABLEKS                       R9 R9 K12 ["__index"]
       46 DUPCLOSURE                       R10 K13 [PROTO_0]
       47 CAPTURE                          VAL R9
       48 SETTABLEKS                       R10 R9 K14 ["new"]
       50 DUPCLOSURE                       R10 K15 [PROTO_1]
       51 SETTABLEKS                       R10 R9 K16 ["register"]
       53 DUPCLOSURE                       R10 K17 [PROTO_3]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R10 R9 K18 ["unregister"]
       58 DUPCLOSURE                       R10 K19 [PROTO_5]
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R10 R9 K20 ["onTestFileResult"]
       62 DUPCLOSURE                       R10 K21 [PROTO_7]
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R10 R9 K22 ["onTestFileStart"]
       66 DUPCLOSURE                       R10 K23 [PROTO_9]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R10 R9 K24 ["onRunStart"]
       70 DUPCLOSURE                       R10 K25 [PROTO_11]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R10 R9 K26 ["onTestCaseResult"]
       74 DUPCLOSURE                       R10 K27 [PROTO_13]
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R10 R9 K28 ["onRunComplete"]
       78 DUPCLOSURE                       R10 K29 [PROTO_14]
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R10 R9 K30 ["getErrors"]
       82 DUPCLOSURE                       R10 K31 [PROTO_15]
       83 SETTABLEKS                       R10 R9 K32 ["hasErrors"]
       85 SETTABLEKS                       R9 R5 K33 ["default"]
       87 RETURN                           R5 1
