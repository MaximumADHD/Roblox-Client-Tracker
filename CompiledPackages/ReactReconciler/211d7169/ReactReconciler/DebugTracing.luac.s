PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 DIVK                             R2 R0 K1 [2]
        2 FASTCALL1                        MATH_MODF R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K4 [math.modf]
        6 CALL                             R3 1 2
        7 MOVE                             R0 R3
        8 FASTCALL1                        MATH_CEIL R4 ; [+3]
        9 MOVE                             R8 R4
       10 GETIMPORT                        R7 K6 [math.ceil]
       12 CALL                             R7 1 1
       13 MOVE                             R5 R7
       14 MOVE                             R6 R1
       15 CONCAT                           R1 R5 R6
       16 JUMPIFEQKN                       R0 K7 [0] ; [+2]
       18 JUMPBACK                         ; [-18]
       19 FASTCALL1                        STRING_LEN R1 ; [+3]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K11 [string.len]
       23 CALL                             R3 1 1
       24 SUBRK                            R2 R8 K3 ["modf"]
       25 GETIMPORT                        R6 K13 [string.rep]
       27 LOADK                            R7 K14 ["0"]
       28 MOVE                             R8 R2
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 MOVE                             R5 R1
       32 CONCAT                           R3 R4 R5
       33 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R2 K0 ["0b"]
        1 GETGLOBAL                        R3 K1 ["decimalToBinaryString"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 CONCAT                           R1 R2 R3
        6 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [ipairs]
        3 NEWTABLE                         R1 0 0
        5 GETVARARGS                       R3 -1
        6 SETLIST                          R1 R3 -1 [1]
        8 CALL                             R0 1 3
        9 FORGPREP_INEXT                   R0
       10 GETUPVAL                         R6 0
       11 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       13 MOVE                             R7 R4
       14 GETIMPORT                        R5 K4 [table.insert]
       16 CALL                             R5 2 0
       17 FORGLOOP                         R0 2 [inext] ; [-8]
       19 GETUPVAL                         R0 1
       20 JUMPIFNOTEQKNIL                  R0 ; [+9]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R0 R1 K5 ["log"]
       25 SETUPVAL                         R0 1
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R1 3
       28 SETTABLEKS                       R1 R0 K5 ["log"]
       30 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.remove]
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 LENGTH                           R1 R2
        8 JUMPIFNOTLT                      R1 R0 ; [+9]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K3 ["groupEnd"]
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 1
       15 SUBK                             R0 R0 K4 [1]
       16 SETUPVAL                         R0 1
       17 JUMPBACK                         ; [-13]
       18 GETUPVAL                         R1 0
       19 LENGTH                           R0 R1
       20 JUMPIFNOTEQKN                    R0 K5 [0] ; [+7]
       22 GETUPVAL                         R0 2
       23 GETUPVAL                         R1 3
       24 SETTABLEKS                       R1 R0 K6 ["log"]
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 3
       28 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 1
        3 LENGTH                           R1 R2
        4 JUMPIFNOTLT                      R0 R1 ; [+18]
        6 GETUPVAL                         R3 0
        7 ADDK                             R2 R3 K0 [1]
        8 GETUPVAL                         R3 1
        9 LENGTH                           R0 R3
       10 LOADN                            R1 1
       11 FORNPREP                         R0
       12 GETUPVAL                         R4 1
       13 GETTABLE                         R3 R4 R2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K1 ["group"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 FORNLOOP                         R0
       20 GETUPVAL                         R1 1
       21 LENGTH                           R0 R1
       22 SETUPVAL                         R0 0
       23 GETUPVAL                         R1 3
       24 FASTCALL1                        TYPEOF R1 ; [+2]
       25 GETIMPORT                        R0 K3 [typeof]
       27 CALL                             R0 1 1
       28 JUMPIFNOTEQKS                    R0 K4 ["function"] ; [+5]
       30 GETUPVAL                         R0 3
       31 GETVARARGS                       R1 -1
       32 CALL                             R0 -1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R0 R1 K5 ["log"]
       37 GETVARARGS                       R1 -1
       38 CALL                             R0 -1 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+15]
        7 GETUPVAL                         R1 1
        8 GETIMPORT                        R2 K5 [string.format]
       10 LOADK                            R3 K6 ["* commit (%s)"]
       11 LOADK                            R5 K7 ["0b"]
       12 GETGLOBAL                        R6 K8 ["decimalToBinaryString"]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R2 2 1
       18 LOADK                            R3 K9 [""]
       19 LOADK                            R4 K9 [""]
       20 LOADK                            R5 K9 [""]
       21 CALL                             R1 4 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [string.format]
        3 LOADK                            R2 K3 ["* %s resolved"]
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [string.format]
        3 LOADK                            R2 K3 ["* %s rejected"]
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+18]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+16]
        7 GETUPVAL                         R2 1
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["* %s suspended"]
       11 MOVE                             R5 R0
       12 CALL                             R3 2 -1
       13 CALL                             R2 -1 0
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R2 R1 K7 ["andThen"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 1
        8 GETIMPORT                        R2 K5 [string.format]
       10 LOADK                            R3 K6 ["* layout effects (%s)"]
       11 LOADK                            R5 K7 ["0b"]
       12 GETGLOBAL                        R6 K8 ["decimalToBinaryString"]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 1
        8 GETIMPORT                        R2 K5 [string.format]
       10 LOADK                            R3 K6 ["* passive effects (%s)"]
       11 LOADK                            R5 K7 ["0b"]
       12 GETGLOBAL                        R6 K8 ["decimalToBinaryString"]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 1
        8 GETIMPORT                        R2 K5 [string.format]
       10 LOADK                            R3 K6 ["* render (%s)"]
       11 LOADK                            R5 K7 ["0b"]
       12 GETGLOBAL                        R6 K8 ["decimalToBinaryString"]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+13]
        7 GETUPVAL                         R2 1
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["* %s forced update (%s)"]
       11 MOVE                             R5 R0
       12 LOADK                            R7 K7 ["0b"]
       13 GETGLOBAL                        R8 K8 ["decimalToBinaryString"]
       15 MOVE                             R9 R1
       16 CALL                             R8 1 1
       17 CONCAT                           R6 R7 R8
       18 CALL                             R3 3 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+15]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOT                        R3 ; [+13]
        7 GETUPVAL                         R3 1
        8 GETIMPORT                        R4 K5 [string.format]
       10 LOADK                            R5 K6 ["* %s updated state (%s)"]
       11 MOVE                             R6 R0
       12 LOADK                            R8 K7 ["0b"]
       13 GETGLOBAL                        R9 K8 ["decimalToBinaryString"]
       15 MOVE                             R10 R1
       16 CALL                             R9 1 1
       17 CONCAT                           R7 R8 R9
       18 CALL                             R4 3 -1
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["console"]
       14 NEWTABLE                         R3 16 0
       16 LOADNIL                          R4
       17 GETIMPORT                        R5 K4 [require]
       19 GETIMPORT                        R8 K1 [script]
       21 GETTABLEKS                       R7 R8 K2 ["Parent"]
       23 GETTABLEKS                       R6 R7 K7 ["ReactFiberLane"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R8 K4 [require]
       28 GETTABLEKS                       R9 R0 K5 ["Shared"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R7 R8 K8 ["ReactFeatureFlags"]
       33 GETTABLEKS                       R6 R7 K9 ["enableDebugTracing"]
       35 LOADNIL                          R7
       36 NEWTABLE                         R8 0 0
       38 LOADN                            R9 0
       39 DUPCLOSURE                       R10 K10 [PROTO_0]
       40 SETGLOBAL                        R10 K11 ["decimalToBinaryString"]
       42 DUPCLOSURE                       R10 K12 [PROTO_1]
       43 NEWCLOSURE                       R11 P2
       44 CAPTURE                          VAL R8
       45 CAPTURE                          REF R7
       46 CAPTURE                          VAL R2
       47 CAPTURE                          REF R4
       48 NEWCLOSURE                       R12 P3
       49 CAPTURE                          VAL R8
       50 CAPTURE                          REF R9
       51 CAPTURE                          VAL R2
       52 CAPTURE                          REF R7
       53 NEWCLOSURE                       R4 P4
       54 CAPTURE                          REF R9
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R2
       57 CAPTURE                          REF R7
       58 DUPCLOSURE                       R13 K13 [PROTO_5]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R11
       61 SETTABLEKS                       R13 R3 K14 ["logCommitStarted"]
       63 DUPCLOSURE                       R14 K15 [PROTO_6]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R12
       66 SETTABLEKS                       R14 R3 K16 ["logCommitStopped"]
       68 NEWCLOSURE                       R15 P7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          REF R4
       71 SETTABLEKS                       R15 R3 K17 ["logComponentSuspended"]
       73 DUPCLOSURE                       R16 K18 [PROTO_10]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R11
       76 SETTABLEKS                       R16 R3 K19 ["logLayoutEffectsStarted"]
       78 DUPCLOSURE                       R17 K20 [PROTO_11]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R12
       81 SETTABLEKS                       R17 R3 K21 ["logLayoutEffectsStopped"]
       83 DUPCLOSURE                       R18 K22 [PROTO_12]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R18 R3 K23 ["logPassiveEffectsStarted"]
       88 DUPCLOSURE                       R19 K24 [PROTO_13]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R12
       91 SETTABLEKS                       R19 R3 K25 ["logPassiveEffectsStopped"]
       93 DUPCLOSURE                       R20 K26 [PROTO_14]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R11
       96 SETTABLEKS                       R20 R3 K27 ["logRenderStarted"]
       98 DUPCLOSURE                       R21 K28 [PROTO_15]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R12
      101 SETTABLEKS                       R21 R3 K29 ["logRenderStopped"]
      103 NEWCLOSURE                       R22 P14
      104 CAPTURE                          VAL R6
      105 CAPTURE                          REF R4
      106 SETTABLEKS                       R22 R3 K30 ["logForceUpdateScheduled"]
      108 NEWCLOSURE                       R23 P15
      109 CAPTURE                          VAL R6
      110 CAPTURE                          REF R4
      111 SETTABLEKS                       R23 R3 K31 ["logStateUpdateScheduled"]
      113 CLOSEUPVALS                      R4
      114 RETURN                           R3 1
