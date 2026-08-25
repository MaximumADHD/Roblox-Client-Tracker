PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["get"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R2 R1 K1 ["EventLogger"]
       12 GETTABLEKS                       R2 R2 K2 ["logThreadSwitched"]
       14 DUPTABLE                         R3 K7 [{"conversationId", "previousThreadId", "nextThreadId", "source"}]
       15 GETUPVAL                         R4 3
       16 SETTABLEKS                       R4 R3 K3 ["conversationId"]
       18 SETTABLEKS                       R0 R3 K4 ["previousThreadId"]
       20 GETUPVAL                         R4 0
       21 SETTABLEKS                       R4 R3 K5 ["nextThreadId"]
       23 GETUPVAL                         R4 1
       24 SETTABLEKS                       R4 R3 K6 ["source"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R1 0
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setThreadId"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["sessionId"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 2
       27 MOVE                             R7 R1
       28 MOVE                             R8 R3
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["SessionIdContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Components"]
       34 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["ThreadIdContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_2]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 RETURN                           R6 1
