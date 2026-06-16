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
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+20]
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["register"]
       14 GETUPVAL                         R1 4
       15 CALL                             R0 1 0
       16 JUMP                             ; [+11]
       17 GETUPVAL                         R0 5
       18 GETTABLEKS                       R0 R0 K1 ["get"]
       20 CALL                             R0 0 1
       21 GETTABLEKS                       R0 R0 K2 ["onceExperimentFeatureEnabled"]
       23 LOADK                            R1 K3 ["UnitTestSubagent"]
       24 DUPCLOSURE                       R2 K4 [PROTO_2]
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U4
       27 CALL                             R0 2 0
       28 GETUPVAL                         R0 6
       29 CALL                             R0 0 1
       30 JUMPIFNOT                        R0 ; [+5]
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K0 ["register"]
       34 GETUPVAL                         R1 7
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 8
       37 CALL                             R0 0 1
       38 JUMPIFNOT                        R0 ; [+20]
       39 GETUPVAL                         R0 9
       40 CALL                             R0 0 1
       41 JUMPIFNOT                        R0 ; [+6]
       42 GETUPVAL                         R0 0
       43 GETTABLEKS                       R0 R0 K0 ["register"]
       45 GETUPVAL                         R1 10
       46 CALL                             R0 1 0
       47 JUMP                             ; [+11]
       48 GETUPVAL                         R0 5
       49 GETTABLEKS                       R0 R0 K1 ["get"]
       51 CALL                             R0 0 1
       52 GETTABLEKS                       R0 R0 K2 ["onceExperimentFeatureEnabled"]
       54 LOADK                            R1 K5 ["ScreenCaptureSubagent"]
       55 DUPCLOSURE                       R2 K6 [PROTO_3]
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U10
       58 CALL                             R0 2 0
       59 GETUPVAL                         R0 0
       60 GETTABLEKS                       R0 R0 K7 ["setInternalVisibleSubagents"]
       62 GETUPVAL                         R1 11
       63 CALL                             R0 1 0
       64 GETUPVAL                         R0 0
       65 GETTABLEKS                       R0 R0 K8 ["setExternalVisibleSubagents"]
       67 GETUPVAL                         R1 12
       68 CALL                             R0 1 0
       69 RETURN                           R0 0

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
       24 GETTABLEKS                       R3 R0 K11 ["Flags"]
       26 GETTABLEKS                       R3 R3 K12 ["FFlagAssistantScreenCaptureSubagent"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Flags"]
       33 GETTABLEKS                       R4 R4 K13 ["FFlagAssistantUnitTestSubagent"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R5 K1 [script]
       40 GETTABLEKS                       R5 R5 K6 ["Parent"]
       42 GETTABLEKS                       R5 R5 K11 ["Flags"]
       44 GETTABLEKS                       R5 R5 K14 ["FFlagEnablePlaytestSubagent"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K11 ["Flags"]
       51 GETTABLEKS                       R6 R6 K15 ["FFlagForceAssistantScreenCaptureSubagent"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K11 ["Flags"]
       58 GETTABLEKS                       R7 R7 K16 ["FFlagForceAssistantUnitTestSubagent"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K17 ["Guest"]
       65 GETTABLEKS                       R8 R8 K18 ["Environment"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETIMPORT                        R9 K1 [script]
       72 GETTABLEKS                       R9 R9 K19 ["ExploreSubagent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETIMPORT                        R10 K1 [script]
       79 GETTABLEKS                       R10 R10 K20 ["PlaytestSubagent"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETIMPORT                        R11 K1 [script]
       86 GETTABLEKS                       R11 R11 K21 ["ScreenCaptureSubagent"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETIMPORT                        R12 K1 [script]
       93 GETTABLEKS                       R12 R12 K22 ["SubagentDefinition"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETIMPORT                        R13 K1 [script]
      100 GETTABLEKS                       R13 R13 K23 ["SubagentRegistry"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETIMPORT                        R14 K1 [script]
      107 GETTABLEKS                       R14 R14 K24 ["UnitTestSubagent"]
      109 CALL                             R13 1 1
      110 LOADNIL                          R14
      111 NEWTABLE                         R15 0 3
      113 MOVE                             R16 R8
      114 MOVE                             R17 R13
      115 MOVE                             R18 R9
      116 SETLIST                          R15 R16 3 [1]
      118 NEWTABLE                         R16 0 2
      120 MOVE                             R17 R8
      121 MOVE                             R18 R9
      122 SETLIST                          R16 R17 2 [1]
      124 NEWTABLE                         R17 4 0
      126 NEWCLOSURE                       R18 P0
      127 CAPTURE                          REF R14
      128 SETTABLEKS                       R18 R17 K25 ["setRequestHandler"]
      130 NEWCLOSURE                       R18 P1
      131 CAPTURE                          REF R14
      132 SETTABLEKS                       R18 R17 K26 ["getRequestHandler"]
      134 DUPCLOSURE                       R18 K27 [PROTO_4]
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R16
      148 SETTABLEKS                       R18 R17 K28 ["registerAll"]
      150 CLOSEUPVALS                      R14
      151 RETURN                           R17 1
