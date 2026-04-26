PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K7 [{"addContent", "editContent", "eventLogger", "withClient", "sessionId", "assistantMode"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["addContent"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["editContent"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["eventLogger"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K4 ["withClient"]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K5 ["sessionId"]
       19 GETUPVAL                         R2 6
       20 SETTABLEKS                       R2 R1 K6 ["assistantMode"]
       22 CALL                             R0 1 -1
       23 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["get"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R2 R3 K1 ["EventLogger"]
       10 LOADNIL                          R3
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETUPVAL                         R4 4
       15 CALL                             R4 0 1
       16 MOVE                             R3 R4
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 GETUPVAL                         R6 5
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+12]
       22 GETUPVAL                         R6 6
       23 CALL                             R6 0 1
       24 MOVE                             R4 R6
       25 GETUPVAL                         R7 7
       26 GETTABLEKS                       R6 R7 K2 ["useContext"]
       28 GETUPVAL                         R8 8
       29 GETTABLEKS                       R7 R8 K3 ["Context"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R5 R6 K4 ["sessionId"]
       34 GETUPVAL                         R7 7
       35 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          REF R4
       43 CAPTURE                          REF R5
       44 CAPTURE                          REF R3
       45 NEWTABLE                         R8 0 6
       47 MOVE                             R9 R0
       48 MOVE                             R10 R1
       49 MOVE                             R11 R2
       50 MOVE                             R12 R4
       51 MOVE                             R13 R5
       52 MOVE                             R14 R3
       53 SETLIST                          R8 R9 6 [1]
       55 CALL                             R6 2 -1
       56 CLOSEUPVALS                      R3
       57 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentObserver"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K13 ["SessionIdContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       41 GETTABLEKS                       R6 R7 K15 ["useAddContent"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       48 GETTABLEKS                       R7 R8 K16 ["useAssistantMode"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K14 ["Hooks"]
       55 GETTABLEKS                       R8 R9 K17 ["useEditContent"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K14 ["Hooks"]
       62 GETTABLEKS                       R9 R10 K18 ["useWithClient"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Flags"]
       69 GETTABLEKS                       R10 R11 K20 ["getAssistantModeEnabled"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K19 ["Flags"]
       76 GETTABLEKS                       R11 R12 K21 ["FFlagAssistantToolExistenceRefactor"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K22 [PROTO_1]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R1
       90 RETURN                           R11 1
