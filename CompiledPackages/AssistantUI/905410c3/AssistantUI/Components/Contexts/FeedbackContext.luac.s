PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"feedbackRequest", "openFeedback", "closeFeedback"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["feedbackRequest"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["openFeedback"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["closeFeedback"]
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K2 ["useMemo"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 3
       30 MOVE                             R8 R1
       31 MOVE                             R9 R3
       32 MOVE                             R10 R4
       33 SETLIST                          R7 R8 3 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 1
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R7 R8 K3 ["Provider"]
       40 DUPTABLE                         R8 K5 [{"value"}]
       41 SETTABLEKS                       R5 R8 K4 ["value"]
       43 GETTABLEKS                       R9 R0 K6 ["children"]
       45 CALL                             R6 3 -1
       46 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K9 ["createElement"]
       21 DUPTABLE                         R4 K13 [{"feedbackRequest", "openFeedback", "closeFeedback"}]
       22 LOADNIL                          R5
       23 SETTABLEKS                       R5 R4 K10 ["feedbackRequest"]
       25 DUPCLOSURE                       R5 K14 [PROTO_0]
       26 SETTABLEKS                       R5 R4 K11 ["openFeedback"]
       28 DUPCLOSURE                       R5 K15 [PROTO_1]
       29 SETTABLEKS                       R5 R4 K12 ["closeFeedback"]
       31 GETTABLEKS                       R5 R2 K16 ["createContext"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K17 [PROTO_5]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPTABLE                         R7 K20 [{"Context", "Provider"}]
       40 SETTABLEKS                       R5 R7 K18 ["Context"]
       42 SETTABLEKS                       R6 R7 K19 ["Provider"]
       44 RETURN                           R7 1
