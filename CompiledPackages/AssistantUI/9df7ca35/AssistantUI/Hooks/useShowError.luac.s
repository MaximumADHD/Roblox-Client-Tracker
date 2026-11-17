PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["get"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R2 R2 K2 ["EventLogger"]
       10 GETTABLEKS                       R3 R2 K3 ["logErrorEvent"]
       12 GETTABLEKS                       R4 R0 K4 ["errorType"]
       14 DUPTABLE                         R5 K8 [{"requestId", "conversationId", "threadId", "acpSessionId"}]
       15 GETTABLEKS                       R6 R0 K9 ["messageGuid"]
       17 SETTABLEKS                       R6 R5 K5 ["requestId"]
       19 GETUPVAL                         R6 2
       20 SETTABLEKS                       R6 R5 K6 ["conversationId"]
       22 SETTABLEKS                       R1 R5 K0 ["threadId"]
       24 GETTABLEKS                       R6 R0 K7 ["acpSessionId"]
       26 SETTABLEKS                       R6 R5 K7 ["acpSessionId"]
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R3 R0 K4 ["errorType"]
       31 JUMPIFNOTEQKS                    R3 K10 ["quota_exceeded"] ; [+8]
       33 GETUPVAL                         R3 3
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K11 ["QuotaExceeded"]
       37 MOVE                             R5 R1
       38 CALL                             R3 2 0
       39 JUMP                             ; [+10]
       40 GETTABLEKS                       R3 R0 K4 ["errorType"]
       42 JUMPIFNOTEQKS                    R3 K12 ["too_many_request"] ; [+7]
       44 GETUPVAL                         R3 3
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K13 ["TooManyRequest"]
       48 MOVE                             R5 R1
       49 CALL                             R3 2 0
       50 DUPTABLE                         R3 K16 [{"type", "errorType", "sourceMessageGuid"}]
       51 GETUPVAL                         R4 5
       52 GETTABLEKS                       R4 R4 K17 ["Type"]
       54 SETTABLEKS                       R4 R3 K14 ["type"]
       56 GETTABLEKS                       R4 R0 K4 ["errorType"]
       58 SETTABLEKS                       R4 R3 K4 ["errorType"]
       60 GETTABLEKS                       R4 R0 K9 ["messageGuid"]
       62 SETTABLEKS                       R4 R3 K15 ["sourceMessageGuid"]
       64 GETUPVAL                         R4 6
       65 DUPTABLE                         R5 K22 [{["role"] = "system", ["ephemeral"] = True, [3]}]
       66 SETTABLEKS                       R1 R5 K0 ["threadId"]
       68 CALL                             R4 1 1
       69 GETUPVAL                         R5 7
       70 DUPTABLE                         R6 K25 [{"messageId", "threadId", "content"}]
       71 SETTABLEKS                       R4 R6 K23 ["messageId"]
       73 SETTABLEKS                       R1 R6 K0 ["threadId"]
       75 SETTABLEKS                       R3 R6 K24 ["content"]
       77 CALL                             R5 1 0
       78 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useContext"]
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["Context"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K2 ["markInputDisabled"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K0 ["useContext"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K1 ["Context"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R4 R4 K3 ["sessionId"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K0 ["useContext"]
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R6 R6 K1 ["Context"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R5 R5 K4 ["threadId"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R8 0 5
       45 MOVE                             R9 R0
       46 MOVE                             R10 R1
       47 MOVE                             R11 R3
       48 MOVE                             R12 R4
       49 MOVE                             R13 R5
       50 SETLIST                          R8 R9 5 [1]
       52 CALL                             R6 2 -1
       53 RETURN                           R6 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["ErrorContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K12 ["InputStateContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Components"]
       43 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K15 ["SessionIdContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Components"]
       52 GETTABLEKS                       R7 R7 K11 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K16 ["ThreadIdContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K19 ["useAddContent"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       73 GETTABLEKS                       R10 R10 K20 ["useAddMessage"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R3 K21 ["InputDisabledReasons"]
       78 DUPCLOSURE                       R11 K22 [PROTO_1]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R2
       88 RETURN                           R11 1
