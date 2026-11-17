PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getIsPlayerPromptReceived"]
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

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
        3 GETTABLEKS                       R1 R1 K0 ["getIsMultiPlayerClientAgentChangedSignal"]
        5 CALL                             R1 0 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K2 ["isMultiPlayerClientAgent"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["getCurrentPlayerPromptReadySignal"]
       16 CALL                             R1 0 1
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R1 R1 K1 ["Connect"]
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K4 ["isMultiPlayerClientAgentRunning"]
       25 NEWCLOSURE                       R1 P2
       26 CAPTURE                          VAL R0
       27 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getIsMultiPlayerClientAgent"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useState"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["getIsPlayerPromptReceived"]
       14 CALL                             R3 0 -1
       15 CALL                             R2 -1 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 0
       26 DUPTABLE                         R4 K6 [{"isMultiPlayerClientAgent", "isMultiPlayerClientAgentRunning"}]
       27 SETTABLEKS                       R0 R4 K4 ["isMultiPlayerClientAgent"]
       29 SETTABLEKS                       R2 R4 K5 ["isMultiPlayerClientAgentRunning"]
       31 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["MultiPlayersConnection"]
       13 GETTABLEKS                       R2 R2 K8 ["MultiPlayersAgentClient"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Signal"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_4]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
