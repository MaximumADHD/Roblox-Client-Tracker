PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["requireModule"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["setGlobalsForRuntime"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resetModules"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["resetModules"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["clearMocks"]
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K2 ["clearAllMocks"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K3 ["resetMocks"]
       19 JUMPIFNOT                        R0 ; [+36]
       20 GETUPVAL                         R0 1
       21 NAMECALL                         R0 R0 K4 ["resetAllMocks"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K5 ["toJSBoolean"]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K5 ["toJSBoolean"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K6 ["fakeTimers"]
       33 GETTABLEKS                       R3 R3 K7 ["enableGlobally"]
       35 CALL                             R2 1 1
       36 JUMPIFNOT                        R2 ; [+6]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K6 ["fakeTimers"]
       40 GETTABLEKS                       R1 R1 K8 ["legacyFakeTimers"]
       42 JUMP                             ; [+5]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K6 ["fakeTimers"]
       46 GETTABLEKS                       R1 R1 K7 ["enableGlobally"]
       48 CALL                             R0 1 1
       49 JUMPIFNOT                        R0 ; [+6]
       50 GETUPVAL                         R0 3
       51 GETTABLEKS                       R0 R0 K6 ["fakeTimers"]
       53 NAMECALL                         R0 R0 K9 ["useFakeTimers"]
       55 CALL                             R0 1 0
       56 GETUPVAL                         R0 0
       57 GETTABLEKS                       R0 R0 K10 ["restoreMocks"]
       59 JUMPIFNOT                        R0 ; [+4]
       60 GETUPVAL                         R0 1
       61 NAMECALL                         R0 R0 K11 ["restoreAllMocks"]
       63 CALL                             R0 1 0
       64 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["requireInternalModule"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R1 R0 K1 ["initialize"]
        7 GETTABLEKS                       R2 R0 K2 ["runAndTransformResultsToJestFormat"]
        9 MOVE                             R3 R1
       10 DUPTABLE                         R4 K10 [{"config", "environment", "globalConfig", "localRequire", "sendMessageToJest", "setGlobalsForRuntime", "testPath"}]
       11 GETUPVAL                         R5 2
       12 SETTABLEKS                       R5 R4 K3 ["config"]
       14 GETUPVAL                         R5 3
       15 SETTABLEKS                       R5 R4 K4 ["environment"]
       17 GETUPVAL                         R5 4
       18 SETTABLEKS                       R5 R4 K5 ["globalConfig"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U0
       22 SETTABLEKS                       R5 R4 K6 ["localRequire"]
       24 GETUPVAL                         R5 5
       25 SETTABLEKS                       R5 R4 K7 ["sendMessageToJest"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          UPVAL U0
       29 SETTABLEKS                       R5 R4 K8 ["setGlobalsForRuntime"]
       31 GETUPVAL                         R5 6
       32 SETTABLEKS                       R5 R4 K9 ["testPath"]
       34 CALL                             R3 1 1
       35 NAMECALL                         R3 R3 K11 ["expect"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R3 K12 ["globals"]
       40 GETTABLEKS                       R5 R3 K13 ["snapshotState"]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K14 ["fakeTimers"]
       45 NAMECALL                         R6 R6 K15 ["useFakeTimers"]
       47 CALL                             R6 1 0
       48 GETTABLEKS                       R6 R4 K16 ["beforeEach"]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U3
       55 CALL                             R6 1 0
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K17 ["setupFilesAfterEnv"]
       59 LOADNIL                          R7
       60 LOADNIL                          R8
       61 FORGPREP                         R6
       62 GETUPVAL                         R11 0
       63 MOVE                             R13 R10
       64 LOADNIL                          R14
       65 LOADNIL                          R15
       66 LOADNIL                          R16
       67 LOADB                            R17 1
       68 NAMECALL                         R11 R11 K18 ["requireModule"]
       70 CALL                             R11 6 0
       71 FORGLOOP                         R6 2 ; [-10]
       73 GETUPVAL                         R6 0
       74 GETUPVAL                         R8 6
       75 LOADNIL                          R9
       76 LOADNIL                          R10
       77 LOADNIL                          R11
       78 LOADB                            R12 1
       79 NAMECALL                         R6 R6 K18 ["requireModule"]
       81 CALL                             R6 6 0
       82 MOVE                             R6 R2
       83 DUPTABLE                         R7 K19 [{"config", "globalConfig", "testPath"}]
       84 GETUPVAL                         R8 2
       85 SETTABLEKS                       R8 R7 K3 ["config"]
       87 GETUPVAL                         R8 4
       88 SETTABLEKS                       R8 R7 K5 ["globalConfig"]
       90 GETUPVAL                         R8 6
       91 SETTABLEKS                       R8 R7 K9 ["testPath"]
       93 CALL                             R6 1 1
       94 NAMECALL                         R6 R6 K11 ["expect"]
       96 CALL                             R6 1 1
       97 GETUPVAL                         R7 8
       98 MOVE                             R8 R6
       99 MOVE                             R9 R5
      100 CALL                             R7 2 0
      101 GETUPVAL                         R7 9
      102 MOVE                             R8 R6
      103 DUPTABLE                         R9 K21 [{"keepPrototype"}]
      104 LOADB                            R10 0
      105 SETTABLEKS                       R10 R9 K20 ["keepPrototype"]
      107 CALL                             R7 2 -1
      108 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R5
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R6 R6 K1 ["andThen"]
       17 CALL                             R6 2 -1
       18 RETURN                           R6 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["fullName"]
        2 GETTABLEKS                       R2 R0 K1 ["status"]
        4 JUMPIFEQKS                       R2 K2 ["pending"] ; [+3]
        6 JUMPIFNOTEQKS                    R2 K3 ["failed"] ; [+6]
        8 GETUPVAL                         R3 0
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K4 ["markSnapshotsAsCheckedForTest"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 GETTABLEKS                       R3 R0 K1 ["testResults"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 0
        8 NAMECALL                         R2 R1 K2 ["getUncheckedCount"]
       10 CALL                             R2 1 1
       11 NAMECALL                         R3 R1 K3 ["getUncheckedKeys"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["toJSBoolean"]
       17 MOVE                             R5 R2
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R4 ; [+3]
       20 NAMECALL                         R4 R1 K5 ["removeUncheckedKeys"]
       22 CALL                             R4 1 0
       23 NAMECALL                         R4 R1 K6 ["save"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R0 K7 ["snapshot"]
       28 GETTABLEKS                       R6 R4 K8 ["deleted"]
       30 SETTABLEKS                       R6 R5 K9 ["fileDeleted"]
       32 GETTABLEKS                       R5 R0 K7 ["snapshot"]
       34 GETTABLEKS                       R6 R1 K10 ["added"]
       36 SETTABLEKS                       R6 R5 K10 ["added"]
       38 GETTABLEKS                       R5 R0 K7 ["snapshot"]
       40 GETTABLEKS                       R6 R1 K11 ["matched"]
       42 SETTABLEKS                       R6 R5 K11 ["matched"]
       44 GETTABLEKS                       R5 R0 K7 ["snapshot"]
       46 GETTABLEKS                       R6 R1 K12 ["unmatched"]
       48 SETTABLEKS                       R6 R5 K12 ["unmatched"]
       50 GETTABLEKS                       R5 R0 K7 ["snapshot"]
       52 GETTABLEKS                       R6 R1 K13 ["updated"]
       54 SETTABLEKS                       R6 R5 K13 ["updated"]
       56 GETTABLEKS                       R5 R0 K7 ["snapshot"]
       58 GETTABLEKS                       R7 R4 K8 ["deleted"]
       60 JUMPIF                           R7 ; [+2]
       61 MOVE                             R6 R2
       62 JUMP                             ; [+1]
       63 LOADN                            R6 0
       64 SETTABLEKS                       R6 R5 K14 ["unchecked"]
       66 GETTABLEKS                       R5 R0 K7 ["snapshot"]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K15 ["from"]
       71 MOVE                             R7 R3
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K16 ["uncheckedKeys"]
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Array"]
       18 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["Promise"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["JestEnvironment"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETTABLEKS                       R7 R0 K10 ["JestTestResult"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K4 [require]
       37 GETTABLEKS                       R8 R0 K11 ["JestTypes"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K12 ["JestRuntime"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K4 [require]
       47 GETTABLEKS                       R10 R0 K13 ["JestUtil"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R9 R9 K14 ["deepCyclicCopy"]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K2 ["Parent"]
       56 GETTABLEKS                       R10 R10 K15 ["jestAdapterInit"]
       58 LOADNIL                          R11
       59 NEWCLOSURE                       R12 P0
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R3
       63 CAPTURE                          REF R11
       64 CAPTURE                          VAL R9
       65 DUPCLOSURE                       R11 K16 [PROTO_6]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 CLOSEUPVALS                      R11
       69 RETURN                           R12 1
