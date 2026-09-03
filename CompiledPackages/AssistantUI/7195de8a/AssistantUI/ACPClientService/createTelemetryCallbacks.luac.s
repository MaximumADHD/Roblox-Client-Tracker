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
       38 GETTABLEKS                       R3 R3 K12 ["FFlagAssistantCreditMeteringTelemetry"]
       40 JUMPIFNOT                        R3 ; [+10]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K13 ["additionalUsageEnabled"]
       44 SETTABLEKS                       R3 R2 K13 ["additionalUsageEnabled"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K14 ["dailyLimitSet"]
       49 SETTABLEKS                       R3 R2 K14 ["dailyLimitSet"]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K15 ["logUserMessageSent"]
       54 MOVE                             R4 R2
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

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
        6 SETTABLEKS                       R3 R2 K0 ["onUserMessageAccepted"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R3 R2 K1 ["onAssistantMessageFinished"]
       12 GETTABLEKS                       R3 R0 K2 ["logRequestJourney"]
       14 SETTABLEKS                       R3 R2 K2 ["logRequestJourney"]
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          REF R1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R3 R2 K3 ["showError"]
       21 NEWCLOSURE                       R3 P3
       22 CAPTURE                          REF R1
       23 SETTABLEKS                       R3 R2 K4 ["shouldEnableInputAfterTurn"]
       25 CLOSEUPVALS                      R1
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K8 [PROTO_0]
       18 DUPCLOSURE                       R4 K9 [PROTO_5]
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 DUPTABLE                         R5 K11 [{"create"}]
       22 SETTABLEKS                       R4 R5 K10 ["create"]
       24 RETURN                           R5 1
