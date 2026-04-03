PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K0 ["get"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R3 R1 K1 ["EventLogger"]
       12 GETTABLEKS                       R2 R3 K2 ["logThreadSwitched"]
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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useSwitchThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setThreadId"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["sessionId"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K7 ["useCallback"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R6 0 2
       35 MOVE                             R7 R1
       36 MOVE                             R8 R3
       37 SETLIST                          R6 R7 2 [1]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K12 ["SessionIdContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Components"]
       34 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K13 ["ThreadIdContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Flags"]
       48 GETTABLEKS                       R7 R8 K16 ["FFlagAssistantMultipleChatSupport"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K17 [PROTO_2]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 RETURN                           R7 1
