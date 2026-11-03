PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        7 JUMPIFNOT                        R1 ; [+14]
        8 GETIMPORT                        R1 K2 [print]
       10 LOADK                            R2 K3 ["[Assistant][Thread] selecting thread: previousThreadId=%*, nextThreadId=%*, source=%*"]
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 0
       13 GETUPVAL                         R7 2
       14 FASTCALL1                        TOSTRING R7 ; [+2]
       15 GETIMPORT                        R6 K5 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R2 R2 K6 ["format"]
       20 CALL                             R2 4 1
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 2
       23 JUMPIFNOT                        R1 ; [+21]
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K7 ["get"]
       27 CALL                             R1 0 1
       28 GETTABLEKS                       R2 R1 K8 ["EventLogger"]
       30 GETTABLEKS                       R2 R2 K9 ["logThreadSwitched"]
       32 DUPTABLE                         R3 K14 [{"conversationId", "previousThreadId", "nextThreadId", "source"}]
       33 GETUPVAL                         R4 4
       34 SETTABLEKS                       R4 R3 K10 ["conversationId"]
       36 SETTABLEKS                       R0 R3 K11 ["previousThreadId"]
       38 GETUPVAL                         R4 0
       39 SETTABLEKS                       R4 R3 K12 ["nextThreadId"]
       41 GETUPVAL                         R4 2
       42 SETTABLEKS                       R4 R3 K13 ["source"]
       44 CALL                             R2 1 0
       45 GETUPVAL                         R1 0
       46 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

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
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R6 0 2
       28 MOVE                             R7 R1
       29 MOVE                             R8 R3
       30 SETLIST                          R6 R7 2 [1]
       32 CALL                             R4 2 -1
       33 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K13 ["SessionIdContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["ThreadIdContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Types"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K16 [PROTO_2]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 RETURN                           R7 1
