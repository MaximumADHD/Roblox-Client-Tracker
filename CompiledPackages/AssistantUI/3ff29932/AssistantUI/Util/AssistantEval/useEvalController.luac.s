PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["events"]
        5 GETTABLEKS                       R1 R1 K1 ["isEvaluationRunningChanged"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K1 ["isEvaluationRunningChanged"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["events"]
       17 GETTABLEKS                       R1 R1 K3 ["evalConfigChanged"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          UPVAL U2
       21 NAMECALL                         R1 R1 K2 ["Connect"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K3 ["evalConfigChanged"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getIsEvaluationRunning"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useState"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["getEvalConfig"]
       14 CALL                             R3 0 -1
       15 CALL                             R2 -1 2
       16 GETUPVAL                         R4 2
       17 CALL                             R4 0 0
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 0
       27 CALL                             R4 2 0
       28 DUPTABLE                         R4 K6 [{"isEvaluationRunning", "evalConfig"}]
       29 SETTABLEKS                       R0 R4 K4 ["isEvaluationRunning"]
       31 SETTABLEKS                       R2 R4 K5 ["evalConfig"]
       33 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantEval"]
       13 GETTABLEKS                       R2 R2 K8 ["EvalController"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Signal"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R5 K7 ["AssistantEval"]
       36 GETTABLEKS                       R5 R5 K12 ["useEvalConversationReader"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_4]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1
