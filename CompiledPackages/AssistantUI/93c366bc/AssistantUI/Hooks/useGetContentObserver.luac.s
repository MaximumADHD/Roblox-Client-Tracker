PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K6 [{"addContent", "editContent", "eventLogger", "withClient", "sessionId"}]
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
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

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
       11 LOADNIL                          R4
       12 GETUPVAL                         R5 3
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+12]
       15 GETUPVAL                         R5 4
       16 CALL                             R5 0 1
       17 MOVE                             R3 R5
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R5 R6 K2 ["useContext"]
       21 GETUPVAL                         R7 6
       22 GETTABLEKS                       R6 R7 K3 ["Context"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R4 R5 K4 ["sessionId"]
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          REF R3
       36 CAPTURE                          REF R4
       37 NEWTABLE                         R7 0 5
       39 MOVE                             R8 R0
       40 MOVE                             R9 R1
       41 MOVE                             R10 R2
       42 MOVE                             R11 R3
       43 MOVE                             R12 R4
       44 SETLIST                          R7 R8 5 [1]
       46 CALL                             R5 2 -1
       47 CLOSEUPVALS                      R3
       48 RETURN                           R5 -1

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
       48 GETTABLEKS                       R7 R8 K16 ["useEditContent"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K14 ["Hooks"]
       55 GETTABLEKS                       R8 R9 K17 ["useWithClient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K18 ["Flags"]
       62 GETTABLEKS                       R9 R10 K19 ["FFlagAssistantToolExistenceRefactor"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K20 [PROTO_1]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 RETURN                           R9 1
