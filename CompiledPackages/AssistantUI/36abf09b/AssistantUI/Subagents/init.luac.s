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
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       17 GETTABLEKS                       R2 R2 K9 ["DefaultLLMProvider"]
       19 GETTABLEKS                       R2 R2 K10 ["LLMRequest"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K5 [require]
       24 GETTABLEKS                       R3 R0 K11 ["Guest"]
       26 GETTABLEKS                       R3 R3 K12 ["Environment"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETIMPORT                        R4 K1 [script]
       33 GETTABLEKS                       R4 R4 K13 ["ExploreSubagent"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K14 ["Flags"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K15 ["PlaytestSubagent"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETIMPORT                        R7 K1 [script]
       52 GETTABLEKS                       R7 R7 K16 ["ScreenCaptureSubagent"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K17 ["SubagentDefinition"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R9 K1 [script]
       66 GETTABLEKS                       R9 R9 K18 ["SubagentRegistry"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETIMPORT                        R10 K1 [script]
       73 GETTABLEKS                       R10 R10 K19 ["UnitTestSubagent"]
       75 CALL                             R9 1 1
       76 LOADNIL                          R10
       77 NEWTABLE                         R11 0 3
       79 MOVE                             R12 R3
       80 MOVE                             R13 R9
       81 MOVE                             R14 R5
       82 SETLIST                          R11 R12 3 [1]
       84 NEWTABLE                         R12 0 2
       86 MOVE                             R13 R3
       87 MOVE                             R14 R5
       88 SETLIST                          R12 R13 2 [1]
       90 NEWTABLE                         R13 4 0
       92 NEWCLOSURE                       R14 P0
       93 CAPTURE                          REF R10
       94 SETTABLEKS                       R14 R13 K20 ["setRequestHandler"]
       96 NEWCLOSURE                       R14 P1
       97 CAPTURE                          REF R10
       98 SETTABLEKS                       R14 R13 K21 ["getRequestHandler"]
      100 DUPCLOSURE                       R14 K22 [PROTO_4]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R12
      110 SETTABLEKS                       R14 R13 K23 ["registerAll"]
      112 CLOSEUPVALS                      R10
      113 RETURN                           R13 1
