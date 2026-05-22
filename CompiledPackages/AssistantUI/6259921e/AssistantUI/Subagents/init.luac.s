PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["register"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K0 ["register"]
       14 GETUPVAL                         R1 4
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 5
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+5]
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K0 ["register"]
       22 GETUPVAL                         R1 6
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 7
       25 CALL                             R0 0 1
       26 JUMPIFNOT                        R0 ; [+5]
       27 GETUPVAL                         R0 1
       28 GETTABLEKS                       R0 R0 K0 ["register"]
       30 GETUPVAL                         R1 8
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 1
       33 GETTABLEKS                       R0 R0 K1 ["setInternalVisibleSubagents"]
       35 GETUPVAL                         R1 9
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 1
       38 GETTABLEKS                       R0 R0 K2 ["setExternalVisibleSubagents"]
       40 GETUPVAL                         R1 10
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

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
       44 GETTABLEKS                       R5 R5 K14 ["FFlagDisableExploreSubagent"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETIMPORT                        R6 K1 [script]
       51 GETTABLEKS                       R6 R6 K6 ["Parent"]
       53 GETTABLEKS                       R6 R6 K11 ["Flags"]
       55 GETTABLEKS                       R6 R6 K15 ["FFlagEnablePlaytestSubagent"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETIMPORT                        R7 K1 [script]
       62 GETTABLEKS                       R7 R7 K16 ["ExploreSubagent"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETIMPORT                        R8 K1 [script]
       69 GETTABLEKS                       R8 R8 K17 ["PlaytestSubagent"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETIMPORT                        R9 K1 [script]
       76 GETTABLEKS                       R9 R9 K18 ["ScreenCaptureSubagent"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETIMPORT                        R10 K1 [script]
       83 GETTABLEKS                       R10 R10 K19 ["SubagentDefinition"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETIMPORT                        R11 K1 [script]
       90 GETTABLEKS                       R11 R11 K20 ["SubagentRegistry"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETIMPORT                        R12 K1 [script]
       97 GETTABLEKS                       R12 R12 K21 ["UnitTestSubagent"]
       99 CALL                             R11 1 1
      100 LOADNIL                          R12
      101 NEWTABLE                         R13 0 3
      103 MOVE                             R14 R6
      104 MOVE                             R15 R11
      105 MOVE                             R16 R7
      106 SETLIST                          R13 R14 3 [1]
      108 NEWTABLE                         R14 0 2
      110 MOVE                             R15 R6
      111 MOVE                             R16 R7
      112 SETLIST                          R14 R15 2 [1]
      114 NEWTABLE                         R15 4 0
      116 NEWCLOSURE                       R16 P0
      117 CAPTURE                          REF R12
      118 SETTABLEKS                       R16 R15 K22 ["setRequestHandler"]
      120 NEWCLOSURE                       R16 P1
      121 CAPTURE                          REF R12
      122 SETTABLEKS                       R16 R15 K23 ["getRequestHandler"]
      124 DUPCLOSURE                       R16 K24 [PROTO_2]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R14
      136 SETTABLEKS                       R16 R15 K25 ["registerAll"]
      138 CLOSEUPVALS                      R12
      139 RETURN                           R15 1
