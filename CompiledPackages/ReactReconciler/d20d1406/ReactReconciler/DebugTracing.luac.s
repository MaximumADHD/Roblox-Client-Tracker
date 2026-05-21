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
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R0 R3 -1 [1]
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 FORGPREP                         R0
        9 GETUPVAL                         R6 0
       10 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       12 MOVE                             R7 R4
       13 GETIMPORT                        R5 K2 [table.insert]
       15 CALL                             R5 2 0
       16 FORGLOOP                         R0 2 ; [-8]
       18 GETUPVAL                         R0 1
       19 JUMPIFNOTEQKNIL                  R0 ; [+9]
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K3 ["log"]
       24 SETUPVAL                         R0 1
       25 GETUPVAL                         R0 2
       26 GETUPVAL                         R1 3
       27 SETTABLEKS                       R1 R0 K3 ["log"]
       29 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.remove]
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 LENGTH                           R1 R2
        8 JUMPIFNOTLT                      R1 R0 ; [+9]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K3 ["groupEnd"]
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
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K1 ["group"]
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
       34 GETUPVAL                         R0 2
       35 GETTABLEKS                       R0 R0 K5 ["log"]
       37 GETVARARGS                       R1 -1
       38 CALL                             R0 -1 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+17]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETUPVAL                         R1 2
        7 GETIMPORT                        R2 K3 [string.format]
        9 LOADK                            R3 K4 ["* commit (%s)"]
       10 LOADK                            R5 K5 ["0b"]
       11 GETGLOBAL                        R6 K6 ["decimalToBinaryString"]
       13 MOVE                             R7 R0
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R2 2 1
       17 LOADK                            R3 K7 [""]
       18 LOADK                            R4 K7 [""]
       19 LOADK                            R5 K7 [""]
       20 CALL                             R1 4 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+16]
        6 GETUPVAL                         R2 2
        7 GETIMPORT                        R3 K3 [string.format]
        9 LOADK                            R4 K4 ["* %s suspended"]
       10 MOVE                             R5 R0
       11 CALL                             R3 2 -1
       12 CALL                             R2 -1 0
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R2 R1 K5 ["andThen"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R1 2
        7 GETIMPORT                        R2 K3 [string.format]
        9 LOADK                            R3 K4 ["* layout effects (%s)"]
       10 LOADK                            R5 K5 ["0b"]
       11 GETGLOBAL                        R6 K6 ["decimalToBinaryString"]
       13 MOVE                             R7 R0
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R1 2
        7 GETIMPORT                        R2 K3 [string.format]
        9 LOADK                            R3 K4 ["* passive effects (%s)"]
       10 LOADK                            R5 K5 ["0b"]
       11 GETGLOBAL                        R6 K6 ["decimalToBinaryString"]
       13 MOVE                             R7 R0
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R1 2
        7 GETIMPORT                        R2 K3 [string.format]
        9 LOADK                            R3 K4 ["* render (%s)"]
       10 LOADK                            R5 K5 ["0b"]
       11 GETGLOBAL                        R6 K6 ["decimalToBinaryString"]
       13 MOVE                             R7 R0
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+15]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETUPVAL                         R2 2
        7 GETIMPORT                        R3 K3 [string.format]
        9 LOADK                            R4 K4 ["* %s forced update (%s)"]
       10 MOVE                             R5 R0
       11 LOADK                            R7 K5 ["0b"]
       12 GETGLOBAL                        R8 K6 ["decimalToBinaryString"]
       14 MOVE                             R9 R1
       15 CALL                             R8 1 1
       16 CONCAT                           R6 R7 R8
       17 CALL                             R3 3 -1
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+13]
        6 GETUPVAL                         R3 2
        7 GETIMPORT                        R4 K3 [string.format]
        9 LOADK                            R5 K4 ["* %s updated state (%s)"]
       10 MOVE                             R6 R0
       11 LOADK                            R8 K5 ["0b"]
       12 GETGLOBAL                        R9 K6 ["decimalToBinaryString"]
       14 MOVE                             R10 R1
       15 CALL                             R9 1 1
       16 CONCAT                           R7 R8 R9
       17 CALL                             R4 3 -1
       18 CALL                             R3 -1 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["console"]
       19 NEWTABLE                         R4 16 0
       21 LOADNIL                          R5
       22 GETIMPORT                        R6 K4 [require]
       24 GETIMPORT                        R7 K1 [script]
       26 GETTABLEKS                       R7 R7 K2 ["Parent"]
       28 GETTABLEKS                       R7 R7 K8 ["ReactFiberLane"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Shared"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R7 R7 K9 ["ReactFeatureFlags"]
       38 GETTABLEKS                       R7 R7 K10 ["enableDebugTracing"]
       40 LOADNIL                          R8
       41 NEWTABLE                         R9 0 0
       43 LOADN                            R10 0
       44 DUPCLOSURE                       R11 K11 [PROTO_0]
       45 SETGLOBAL                        R11 K12 ["decimalToBinaryString"]
       47 DUPCLOSURE                       R11 K13 [PROTO_1]
       48 NEWCLOSURE                       R12 P2
       49 CAPTURE                          VAL R9
       50 CAPTURE                          REF R8
       51 CAPTURE                          VAL R3
       52 CAPTURE                          REF R5
       53 NEWCLOSURE                       R13 P3
       54 CAPTURE                          VAL R9
       55 CAPTURE                          REF R10
       56 CAPTURE                          VAL R3
       57 CAPTURE                          REF R8
       58 NEWCLOSURE                       R5 P4
       59 CAPTURE                          REF R10
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 CAPTURE                          REF R8
       63 DUPCLOSURE                       R14 K14 [PROTO_5]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R12
       67 SETTABLEKS                       R14 R4 K15 ["logCommitStarted"]
       69 DUPCLOSURE                       R15 K16 [PROTO_6]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R13
       73 SETTABLEKS                       R15 R4 K17 ["logCommitStopped"]
       75 NEWCLOSURE                       R16 P7
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R7
       78 CAPTURE                          REF R5
       79 SETTABLEKS                       R16 R4 K18 ["logComponentSuspended"]
       81 DUPCLOSURE                       R17 K19 [PROTO_10]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R12
       85 SETTABLEKS                       R17 R4 K20 ["logLayoutEffectsStarted"]
       87 DUPCLOSURE                       R18 K21 [PROTO_11]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R13
       91 SETTABLEKS                       R18 R4 K22 ["logLayoutEffectsStopped"]
       93 DUPCLOSURE                       R19 K23 [PROTO_12]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R12
       97 SETTABLEKS                       R19 R4 K24 ["logPassiveEffectsStarted"]
       99 DUPCLOSURE                       R20 K25 [PROTO_13]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R13
      103 SETTABLEKS                       R20 R4 K26 ["logPassiveEffectsStopped"]
      105 DUPCLOSURE                       R21 K27 [PROTO_14]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R12
      109 SETTABLEKS                       R21 R4 K28 ["logRenderStarted"]
      111 DUPCLOSURE                       R22 K29 [PROTO_15]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R13
      115 SETTABLEKS                       R22 R4 K30 ["logRenderStopped"]
      117 NEWCLOSURE                       R23 P14
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R7
      120 CAPTURE                          REF R5
      121 SETTABLEKS                       R23 R4 K31 ["logForceUpdateScheduled"]
      123 NEWCLOSURE                       R24 P15
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R7
      126 CAPTURE                          REF R5
      127 SETTABLEKS                       R24 R4 K32 ["logStateUpdateScheduled"]
      129 CLOSEUPVALS                      R5
      130 RETURN                           R4 1
