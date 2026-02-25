PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["commitIndex"]
        2 GETTABLEKS                       R3 R1 K1 ["rootID"]
        4 GETUPVAL                         R4 0
        5 DUPTABLE                         R5 K3 [{"commitIndex", "profilerStore", "rootID"}]
        6 SETTABLEKS                       R2 R5 K0 ["commitIndex"]
        8 GETTABLEKS                       R6 R0 K4 ["_profilerStore"]
       10 SETTABLEKS                       R6 R5 K2 ["profilerStore"]
       12 SETTABLEKS                       R3 R5 K1 ["rootID"]
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["fiberActualDurations"]
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R2 K1 ["has"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETUPVAL                         R3 1
        8 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R2 K4 [table.insert]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["fiberID"]
        2 GETTABLEKS                       R3 R1 K1 ["rootID"]
        4 GETTABLEKS                       R4 R0 K2 ["_fiberCommits"]
        6 MOVE                             R6 R2
        7 NAMECALL                         R4 R4 K3 ["get"]
        9 CALL                             R4 2 1
       10 JUMPIFEQKNIL                     R4 ; [+2]
       12 RETURN                           R4 1
       13 NEWTABLE                         R5 0 0
       15 GETTABLEKS                       R6 R0 K4 ["_profilerStore"]
       17 MOVE                             R8 R3
       18 NAMECALL                         R6 R6 K5 ["getDataForRoot"]
       20 CALL                             R6 2 1
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K6 ["forEach"]
       24 GETTABLEKS                       R8 R6 K7 ["commitData"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R5
       29 CALL                             R7 2 0
       30 GETTABLEKS                       R7 R0 K2 ["_fiberCommits"]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R5
       34 NAMECALL                         R7 R7 K8 ["set"]
       36 CALL                             R7 3 0
       37 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["commitIndex"]
        2 GETTABLEKS                       R3 R1 K1 ["commitTree"]
        4 GETTABLEKS                       R4 R1 K2 ["rootID"]
        6 GETUPVAL                         R5 0
        7 DUPTABLE                         R6 K4 [{"commitIndex", "commitTree", "profilerStore", "rootID"}]
        8 SETTABLEKS                       R2 R6 K0 ["commitIndex"]
       10 SETTABLEKS                       R3 R6 K1 ["commitTree"]
       12 GETTABLEKS                       R7 R0 K5 ["_profilerStore"]
       14 SETTABLEKS                       R7 R6 K3 ["profilerStore"]
       16 SETTABLEKS                       R4 R6 K2 ["rootID"]
       18 CALL                             R5 1 -1
       19 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["rootID"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K2 [{"profilerStore", "rootID"}]
        4 GETTABLEKS                       R5 R0 K3 ["_profilerStore"]
        6 SETTABLEKS                       R5 R4 K1 ["profilerStore"]
        8 SETTABLEKS                       R2 R4 K0 ["rootID"]
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["commitIndex"]
        2 GETTABLEKS                       R3 R1 K1 ["commitTree"]
        4 GETTABLEKS                       R4 R1 K2 ["rootID"]
        6 GETUPVAL                         R5 0
        7 DUPTABLE                         R6 K4 [{"commitIndex", "commitTree", "profilerStore", "rootID"}]
        8 SETTABLEKS                       R2 R6 K0 ["commitIndex"]
       10 SETTABLEKS                       R3 R6 K1 ["commitTree"]
       12 GETTABLEKS                       R7 R0 K5 ["_profilerStore"]
       14 SETTABLEKS                       R7 R6 K3 ["profilerStore"]
       16 SETTABLEKS                       R4 R6 K2 ["rootID"]
       18 CALL                             R5 1 -1
       19 RETURN                           R5 -1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["new"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["_fiberCommits"]
       14 SETTABLEKS                       R0 R1 K4 ["_profilerStore"]
       16 DUPCLOSURE                       R2 K5 [PROTO_0]
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R2 R1 K6 ["getCommitTree"]
       20 DUPCLOSURE                       R2 K7 [PROTO_2]
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R2 R1 K8 ["getFiberCommits"]
       24 DUPCLOSURE                       R2 K9 [PROTO_3]
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R2 R1 K10 ["getFlamegraphChartData"]
       28 DUPCLOSURE                       R2 K11 [PROTO_4]
       29 CAPTURE                          UPVAL U5
       30 SETTABLEKS                       R2 R1 K12 ["getInteractionsChartData"]
       32 DUPCLOSURE                       R2 K13 [PROTO_5]
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K14 ["getRankedChartData"]
       36 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_fiberCommits"]
        2 NAMECALL                         R1 R1 K1 ["clear"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 3
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETTABLEKS                       R3 R1 K7 ["Map"]
       18 GETIMPORT                        R7 K1 [script]
       20 GETTABLEKS                       R6 R7 K2 ["Parent"]
       22 GETTABLEKS                       R5 R6 K8 ["views"]
       24 GETTABLEKS                       R4 R5 K9 ["Profiler"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R4 K10 ["CommitTreeBuilder"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R6 R5 K11 ["getCommitTree"]
       33 GETTABLEKS                       R7 R5 K12 ["invalidateCommitTrees"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETTABLEKS                       R9 R4 K13 ["FlamegraphChartBuilder"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R9 R8 K14 ["getChartData"]
       42 GETTABLEKS                       R10 R8 K15 ["invalidateChartData"]
       44 GETIMPORT                        R11 K4 [require]
       46 GETTABLEKS                       R12 R4 K16 ["InteractionsChartBuilder"]
       48 CALL                             R11 1 1
       49 GETTABLEKS                       R12 R11 K14 ["getChartData"]
       51 GETTABLEKS                       R13 R11 K15 ["invalidateChartData"]
       53 GETIMPORT                        R14 K4 [require]
       55 GETTABLEKS                       R15 R4 K17 ["RankedChartBuilder"]
       57 CALL                             R14 1 1
       58 GETTABLEKS                       R15 R14 K14 ["getChartData"]
       60 GETTABLEKS                       R16 R14 K15 ["invalidateChartData"]
       62 GETIMPORT                        R17 K4 [require]
       64 GETTABLEKS                       R18 R4 K18 ["types"]
       66 CALL                             R17 1 1
       67 GETIMPORT                        R18 K4 [require]
       69 GETIMPORT                        R21 K1 [script]
       71 GETTABLEKS                       R20 R21 K2 ["Parent"]
       73 GETTABLEKS                       R19 R20 K18 ["types"]
       75 CALL                             R18 1 1
       76 NEWTABLE                         R19 0 0
       78 SETTABLEKS                       R19 R19 K19 ["__index"]
       80 DUPCLOSURE                       R20 K20 [PROTO_6]
       81 CAPTURE                          VAL R19
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R15
       88 SETTABLEKS                       R20 R19 K21 ["new"]
       90 DUPCLOSURE                       R20 K22 [PROTO_7]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R16
       95 SETTABLEKS                       R20 R19 K23 ["invalidate"]
       97 RETURN                           R19 1
