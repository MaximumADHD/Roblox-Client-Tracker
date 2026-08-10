PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["register"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["register"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["register"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantUnitTestSubagent"]
        8 JUMPIFNOT                        R0 ; [+21]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["FFlagForceAssistantUnitTestSubagent"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["register"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 JUMP                             ; [+11]
       19 GETUPVAL                         R0 4
       20 GETTABLEKS                       R0 R0 K3 ["get"]
       22 CALL                             R0 0 1
       23 GETTABLEKS                       R0 R0 K4 ["onceExperimentFeatureEnabled"]
       25 LOADK                            R1 K5 ["UnitTestSubagent"]
       26 DUPCLOSURE                       R2 K6 [PROTO_2]
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U3
       29 CALL                             R0 2 0
       30 GETUPVAL                         R0 2
       31 GETTABLEKS                       R0 R0 K7 ["FFlagEnablePlaytestSubagent"]
       33 JUMPIFNOT                        R0 ; [+5]
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K0 ["register"]
       37 GETUPVAL                         R1 5
       38 CALL                             R0 1 0
       39 GETUPVAL                         R0 2
       40 GETTABLEKS                       R0 R0 K8 ["FFlagAssistantScreenCaptureSubagent"]
       42 JUMPIFNOT                        R0 ; [+21]
       43 GETUPVAL                         R0 2
       44 GETTABLEKS                       R0 R0 K9 ["FFlagForceAssistantScreenCaptureSubagent"]
       46 JUMPIFNOT                        R0 ; [+6]
       47 GETUPVAL                         R0 0
       48 GETTABLEKS                       R0 R0 K0 ["register"]
       50 GETUPVAL                         R1 6
       51 CALL                             R0 1 0
       52 JUMP                             ; [+11]
       53 GETUPVAL                         R0 4
       54 GETTABLEKS                       R0 R0 K3 ["get"]
       56 CALL                             R0 0 1
       57 GETTABLEKS                       R0 R0 K4 ["onceExperimentFeatureEnabled"]
       59 LOADK                            R1 K10 ["ScreenCaptureSubagent"]
       60 DUPCLOSURE                       R2 K11 [PROTO_3]
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U6
       63 CALL                             R0 2 0
       64 GETUPVAL                         R0 0
       65 GETTABLEKS                       R0 R0 K12 ["setInternalVisibleSubagents"]
       67 GETUPVAL                         R1 7
       68 CALL                             R0 1 0
       69 GETUPVAL                         R0 0
       70 GETTABLEKS                       R0 R0 K13 ["setExternalVisibleSubagents"]
       72 GETUPVAL                         R1 8
       73 CALL                             R0 1 0
       74 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K10 ["ExploreSubagent"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K12 ["PlaytestSubagent"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K13 ["ScreenCaptureSubagent"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K14 ["SubagentDefinition"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R9 R9 K15 ["SubagentRegistry"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R10 R10 K16 ["UnitTestSubagent"]
       67 CALL                             R9 1 1
       68 LOADNIL                          R10
       69 NEWTABLE                         R11 0 3
       71 MOVE                             R12 R3
       72 MOVE                             R13 R9
       73 MOVE                             R14 R5
       74 SETLIST                          R11 R12 3 [1]
       76 NEWTABLE                         R12 0 2
       78 MOVE                             R13 R3
       79 MOVE                             R14 R5
       80 SETLIST                          R12 R13 2 [1]
       82 NEWTABLE                         R13 4 0
       84 NEWCLOSURE                       R14 P0
       85 CAPTURE                          REF R10
       86 SETTABLEKS                       R14 R13 K17 ["setRequestHandler"]
       88 NEWCLOSURE                       R14 P1
       89 CAPTURE                          REF R10
       90 SETTABLEKS                       R14 R13 K18 ["getRequestHandler"]
       92 DUPCLOSURE                       R14 K19 [PROTO_4]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R14 R13 K20 ["registerAll"]
      104 CLOSEUPVALS                      R10
      105 RETURN                           R13 1
