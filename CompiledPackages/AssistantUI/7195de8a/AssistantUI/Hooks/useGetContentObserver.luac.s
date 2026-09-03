PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K8 [{"addContent", "editContent", "eventLogger", "withClient", "sessionId", "assistantMode", "threadId"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["addContent"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["editContent"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K3 ["eventLogger"]
       13 GETUPVAL                         R3 4
       14 SETTABLEKS                       R3 R2 K4 ["withClient"]
       16 GETUPVAL                         R3 5
       17 SETTABLEKS                       R3 R2 K5 ["sessionId"]
       19 GETUPVAL                         R3 6
       20 SETTABLEKS                       R3 R2 K6 ["assistantMode"]
       22 SETTABLEKS                       R0 R2 K7 ["threadId"]
       24 CALL                             R1 1 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["get"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R2 R2 K1 ["EventLogger"]
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R4 R4 K2 ["useContext"]
       15 GETUPVAL                         R5 5
       16 GETTABLEKS                       R5 R5 K3 ["Context"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K4 ["sessionId"]
       21 GETUPVAL                         R6 6
       22 CALL                             R6 0 1
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R9 0 6
       36 MOVE                             R10 R0
       37 MOVE                             R11 R1
       38 MOVE                             R12 R2
       39 MOVE                             R13 R6
       40 MOVE                             R14 R5
       41 MOVE                             R15 R3
       42 SETLIST                          R9 R10 6 [1]
       44 CALL                             R7 2 -1
       45 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentObserver"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["SessionIdContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K16 ["useAddContent"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K17 ["useAssistantMode"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K18 ["useEditContent"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K15 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K19 ["useWithClient"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K20 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R1
       79 RETURN                           R10 1
