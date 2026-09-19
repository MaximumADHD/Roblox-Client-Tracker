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
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["register"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["FFlagEnablePlaytestSubagent"]
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K0 ["register"]
       17 GETUPVAL                         R1 4
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K0 ["register"]
       22 GETUPVAL                         R1 5
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K2 ["setInternalVisibleSubagents"]
       27 GETUPVAL                         R1 6
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K3 ["setExternalVisibleSubagents"]
       32 GETUPVAL                         R1 7
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

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
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["ExploreSubagent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K10 ["PlaytestSubagent"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K11 ["ScreenCaptureSubagent"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K12 ["SubagentDefinition"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K13 ["SubagentRegistry"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R9 R9 K14 ["UnitTestSubagent"]
       60 CALL                             R8 1 1
       61 LOADNIL                          R9
       62 NEWTABLE                         R10 0 3
       64 MOVE                             R11 R2
       65 MOVE                             R12 R8
       66 MOVE                             R13 R4
       67 SETLIST                          R10 R11 3 [1]
       69 NEWTABLE                         R11 0 2
       71 MOVE                             R12 R2
       72 MOVE                             R13 R4
       73 SETLIST                          R11 R12 2 [1]
       75 NEWTABLE                         R12 4 0
       77 NEWCLOSURE                       R13 P0
       78 CAPTURE                          REF R9
       79 SETTABLEKS                       R13 R12 K15 ["setRequestHandler"]
       81 NEWCLOSURE                       R13 P1
       82 CAPTURE                          REF R9
       83 SETTABLEKS                       R13 R12 K16 ["getRequestHandler"]
       85 DUPCLOSURE                       R13 K17 [PROTO_2]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 SETTABLEKS                       R13 R12 K18 ["registerAll"]
       96 CLOSEUPVALS                      R9
       97 RETURN                           R12 1
