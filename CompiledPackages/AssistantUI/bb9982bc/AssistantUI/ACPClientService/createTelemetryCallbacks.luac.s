PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R8 R6 K1 ["data"]
       14 LENGTH                           R7 R8
       15 DUPTABLE                         R10 K5 [{"imageDataSuffix", "imageDataSize", "mimeType"}]
       16 LOADN                            R12 10
       17 JUMPIFNOTLT                      R12 R7 ; [+11]
       19 GETTABLEKS                       R12 R6 K1 ["data"]
       21 SUBK                             R13 R7 K6 [9]
       22 FASTCALL3                        STRING_SUB R12 R13 R7
       24 MOVE                             R14 R7
       25 GETIMPORT                        R11 K9 [string.sub]
       27 CALL                             R11 3 1
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R11 R6 K1 ["data"]
       31 SETTABLEKS                       R11 R10 K2 ["imageDataSuffix"]
       33 SETTABLEKS                       R7 R10 K3 ["imageDataSize"]
       35 GETTABLEKS                       R11 R6 K4 ["mimeType"]
       37 SETTABLEKS                       R11 R10 K4 ["mimeType"]
       39 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       41 MOVE                             R9 R1
       42 GETIMPORT                        R8 K12 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R2 2 ; [-34]
       47 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K8 [{"messageGuid", "sessionId", "threadId", "acpSessionId", "message", "model", "assistantMode", "attachments"}]
        1 SETTABLEKS                       R0 R2 K0 ["messageGuid"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["sessionId"]
        6 SETTABLEKS                       R3 R2 K1 ["sessionId"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["threadId"]
       11 SETTABLEKS                       R3 R2 K2 ["threadId"]
       13 SETTABLEKS                       R1 R2 K3 ["acpSessionId"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K9 ["text"]
       18 SETTABLEKS                       R3 R2 K4 ["message"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K10 ["selectedModel"]
       23 SETTABLEKS                       R3 R2 K5 ["model"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["assistantMode"]
       28 SETTABLEKS                       R3 R2 K6 ["assistantMode"]
       30 GETUPVAL                         R3 1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K11 ["images"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K7 ["attachments"]
       37 GETUPVAL                         R3 2
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+14]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K12 ["FFlagAssistantCreditMeteringTelemetry"]
       43 JUMPIFNOT                        R3 ; [+10]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K13 ["additionalUsageEnabled"]
       47 SETTABLEKS                       R3 R2 K13 ["additionalUsageEnabled"]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K14 ["dailyLimitSet"]
       52 SETTABLEKS                       R3 R2 K14 ["dailyLimitSet"]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K15 ["logUserMessageSent"]
       57 MOVE                             R4 R2
       58 CALL                             R3 1 0
       59 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["logAssistantMessageSent"]
        3 DUPTABLE                         R3 K5 [{"sessionId", "threadId", "messageId", "acpSessionId"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["sessionId"]
        7 SETTABLEKS                       R4 R3 K1 ["sessionId"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["threadId"]
       12 SETTABLEKS                       R4 R3 K2 ["threadId"]
       14 SETTABLEKS                       R0 R3 K3 ["messageId"]
       16 SETTABLEKS                       R1 R3 K4 ["acpSessionId"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["quota_exceeded"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["too_many_request"] ; [+3]
        4 LOADB                            R3 1
        5 SETUPVAL                         R3 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["showError"]
        9 DUPTABLE                         R4 K7 [{"errorType", "messageGuid", "acpSessionId", "threadId"}]
       10 SETTABLEKS                       R0 R4 K3 ["errorType"]
       12 SETTABLEKS                       R1 R4 K4 ["messageGuid"]
       14 SETTABLEKS                       R2 R4 K5 ["acpSessionId"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K6 ["threadId"]
       19 SETTABLEKS                       R5 R4 K6 ["threadId"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 RETURN                           R0 1

PROTO_5:
        0 LOADB                            R1 0
        1 DUPTABLE                         R2 K5 [{"onUserMessageAccepted", "onAssistantMessageFinished", "logRequestJourney", "showError", "shouldEnableInputAfterTurn"}]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R3 R2 K0 ["onUserMessageAccepted"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R2 K1 ["onAssistantMessageFinished"]
       13 GETTABLEKS                       R3 R0 K2 ["logRequestJourney"]
       15 SETTABLEKS                       R3 R2 K2 ["logRequestJourney"]
       17 NEWCLOSURE                       R3 P2
       18 CAPTURE                          REF R1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R3 R2 K3 ["showError"]
       22 NEWCLOSURE                       R3 P3
       23 CAPTURE                          REF R1
       24 SETTABLEKS                       R3 R2 K4 ["shouldEnableInputAfterTurn"]
       26 CLOSEUPVALS                      R1
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["FlagUtils"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Types"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R1 K9 ["getIsCreditMeteringEnabled"]
       24 DUPCLOSURE                       R5 K10 [PROTO_0]
       25 DUPCLOSURE                       R6 K11 [PROTO_5]
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 DUPTABLE                         R7 K13 [{"create"}]
       30 SETTABLEKS                       R6 R7 K12 ["create"]
       32 RETURN                           R7 1
