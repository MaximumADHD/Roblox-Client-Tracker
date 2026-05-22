PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["get"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R2 R2 K1 ["EventLogger"]
       10 LOADNIL                          R3
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETUPVAL                         R4 4
       15 CALL                             R4 0 1
       16 MOVE                             R3 R4
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R4 R4 K2 ["useContext"]
       20 GETUPVAL                         R5 6
       21 GETTABLEKS                       R5 R5 K3 ["Context"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K4 ["sessionId"]
       26 GETUPVAL                         R6 7
       27 CALL                             R6 0 1
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R5
       38 CAPTURE                          REF R3
       39 NEWTABLE                         R9 0 6
       41 MOVE                             R10 R0
       42 MOVE                             R11 R1
       43 MOVE                             R12 R2
       44 MOVE                             R13 R6
       45 MOVE                             R14 R5
       46 MOVE                             R15 R3
       47 SETLIST                          R9 R10 6 [1]
       49 CALL                             R7 2 -1
       50 CLOSEUPVALS                      R3
       51 RETURN                           R7 -1

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
       39 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K15 ["useAddContent"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K16 ["useAssistantMode"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K17 ["useEditContent"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K18 ["useWithClient"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Flags"]
       69 GETTABLEKS                       R10 R10 K20 ["getAssistantModeEnabled"]
       71 CALL                             R9 1 1
       72 DUPCLOSURE                       R10 K21 [PROTO_1]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R1
       82 RETURN                           R10 1
