PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R2 R1 K2 ["logErrorEvent"]
        8 GETTABLEKS                       R3 R0 K3 ["errorType"]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R0 K3 ["errorType"]
       13 JUMPIFNOTEQKS                    R2 K4 ["quota_exceeded"] ; [+7]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K5 ["QuotaExceeded"]
       19 CALL                             R2 1 0
       20 JUMP                             ; [+9]
       21 GETTABLEKS                       R2 R0 K3 ["errorType"]
       23 JUMPIFNOTEQKS                    R2 K6 ["too_many_request"] ; [+6]
       25 GETUPVAL                         R2 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K7 ["TooManyRequest"]
       29 CALL                             R2 1 0
       30 DUPTABLE                         R2 K10 [{"type", "errorType", "sourceMessageGuid"}]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K11 ["Type"]
       34 SETTABLEKS                       R3 R2 K8 ["type"]
       36 GETTABLEKS                       R3 R0 K3 ["errorType"]
       38 SETTABLEKS                       R3 R2 K3 ["errorType"]
       40 GETTABLEKS                       R3 R0 K12 ["messageGuid"]
       42 SETTABLEKS                       R3 R2 K9 ["sourceMessageGuid"]
       44 GETUPVAL                         R3 4
       45 DUPTABLE                         R4 K15 [{"role", "ephemeral"}]
       46 LOADK                            R5 K16 ["system"]
       47 SETTABLEKS                       R5 R4 K13 ["role"]
       49 LOADB                            R5 1
       50 SETTABLEKS                       R5 R4 K14 ["ephemeral"]
       52 CALL                             R3 1 1
       53 GETUPVAL                         R4 5
       54 DUPTABLE                         R5 K19 [{"messageId", "content"}]
       55 SETTABLEKS                       R3 R5 K17 ["messageId"]
       57 SETTABLEKS                       R2 R5 K18 ["content"]
       59 CALL                             R4 1 0
       60 RETURN                           R0 0

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
       14 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R6 0 3
       25 MOVE                             R7 R0
       26 MOVE                             R8 R1
       27 MOVE                             R9 R3
       28 SETLIST                          R6 R7 3 [1]
       30 CALL                             R4 2 -1
       31 RETURN                           R4 -1

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
       41 GETTABLEKS                       R6 R0 K15 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K17 ["useAddContent"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K18 ["useAddMessage"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R3 K19 ["InputDisabledReasons"]
       60 DUPCLOSURE                       R9 K20 [PROTO_1]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 RETURN                           R9 1
