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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["register"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K0 ["register"]
       14 GETUPVAL                         R1 4
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 5
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R0 6
       20 CALL                             R0 0 1
       21 JUMPIFNOT                        R0 ; [+5]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K0 ["register"]
       25 GETUPVAL                         R1 7
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 8
       28 CALL                             R0 0 1
       29 JUMPIFNOT                        R0 ; [+5]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R0 R1 K0 ["register"]
       33 GETUPVAL                         R1 9
       34 CALL                             R0 1 0
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R0 R1 K1 ["setInternalVisibleSubagents"]
       38 GETUPVAL                         R1 10
       39 CALL                             R0 1 0
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R0 R1 K2 ["setExternalVisibleSubagents"]
       43 GETUPVAL                         R1 11
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R7 K1 [script]
       11 GETTABLEKS                       R6 R7 K6 ["Parent"]
       13 GETTABLEKS                       R5 R6 K7 ["Components"]
       15 GETTABLEKS                       R4 R5 K8 ["Contexts"]
       17 GETTABLEKS                       R3 R4 K9 ["DefaultLLMProvider"]
       19 GETTABLEKS                       R2 R3 K10 ["LLMRequest"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K5 [require]
       24 GETTABLEKS                       R4 R0 K11 ["Flags"]
       26 GETTABLEKS                       R3 R4 K12 ["FFlagAssistantScreenCaptureSubagent"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R6 R7 K6 ["Parent"]
       35 GETTABLEKS                       R5 R6 K11 ["Flags"]
       37 GETTABLEKS                       R4 R5 K13 ["FFlagAssistantTestAutomation"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R6 R0 K11 ["Flags"]
       44 GETTABLEKS                       R5 R6 K14 ["FFlagAssistantUnitTestSubagent"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETIMPORT                        R9 K1 [script]
       51 GETTABLEKS                       R8 R9 K6 ["Parent"]
       53 GETTABLEKS                       R7 R8 K11 ["Flags"]
       55 GETTABLEKS                       R6 R7 K15 ["FFlagDisableExploreSubagent"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETIMPORT                        R10 K1 [script]
       62 GETTABLEKS                       R9 R10 K6 ["Parent"]
       64 GETTABLEKS                       R8 R9 K11 ["Flags"]
       66 GETTABLEKS                       R7 R8 K16 ["FFlagEnablePlaytestSubagent"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETIMPORT                        R9 K1 [script]
       73 GETTABLEKS                       R8 R9 K17 ["ExploreSubagent"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETIMPORT                        R10 K1 [script]
       80 GETTABLEKS                       R9 R10 K18 ["PlaytestSubagent"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETIMPORT                        R11 K1 [script]
       87 GETTABLEKS                       R10 R11 K19 ["ScreenCaptureSubagent"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETIMPORT                        R12 K1 [script]
       94 GETTABLEKS                       R11 R12 K20 ["SubagentDefinition"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETIMPORT                        R13 K1 [script]
      101 GETTABLEKS                       R12 R13 K21 ["SubagentRegistry"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETIMPORT                        R14 K1 [script]
      108 GETTABLEKS                       R13 R14 K22 ["UnitTestSubagent"]
      110 CALL                             R12 1 1
      111 LOADNIL                          R13
      112 NEWTABLE                         R14 0 3
      114 MOVE                             R15 R7
      115 MOVE                             R16 R12
      116 MOVE                             R17 R8
      117 SETLIST                          R14 R15 3 [1]
      119 NEWTABLE                         R15 0 2
      121 MOVE                             R16 R7
      122 MOVE                             R17 R8
      123 SETLIST                          R15 R16 2 [1]
      125 NEWTABLE                         R16 4 0
      127 NEWCLOSURE                       R17 P0
      128 CAPTURE                          REF R13
      129 SETTABLEKS                       R17 R16 K23 ["setRequestHandler"]
      131 NEWCLOSURE                       R17 P1
      132 CAPTURE                          REF R13
      133 SETTABLEKS                       R17 R16 K24 ["getRequestHandler"]
      135 DUPCLOSURE                       R17 K25 [PROTO_2]
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R15
      148 SETTABLEKS                       R17 R16 K26 ["registerAll"]
      150 CLOSEUPVALS                      R13
      151 RETURN                           R16 1
